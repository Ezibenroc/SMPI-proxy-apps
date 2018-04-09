#! /bin/sh

export SIMGRID_PATH=/builds/simgrid_install
export CTEST_CUSTOM_MAXIMUM_FAILED_TEST_OUTPUT_SIZE=1000000

set -exu
rm -rf bin
mkdir -p bin
for org in CodeVault.org  Coral.org ECP.org Mantevo.org  Trinity-Nersc.org ; do 
  emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "'${org}'")'
done

echo > bin/linkchecker.sh << EOF
lynx -hiddenlinks=merge -listonly -dump https://github.com/simgrid/SMPI-proxy-apps/ \
  | grep http | sed 's/ *[0-9]*. //' \
  | linkchecker --stdin --no-follow-url='http' --recursion-level=0
EOF

chmod +x bin/*.sh

cmake .

ctest -T test --output-on-failure --no-compress-output || true
if [ -f Testing/TAG ] ; then
   xsltproc $WORKSPACE/src/ctest2junit.xsl Testing/$( head -n 1 < Testing/TAG )/Test.xml > $WORKSPACE/CTestResults.xml
fi


