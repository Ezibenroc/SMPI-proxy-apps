cmake_minimum_required(VERSION 2.8.8)

project(SMPI-proxy-apps)

INCLUDE(CTest)
ENABLE_TESTING()

set(CTEST_CUSTOM_MAXIMUM_FAILED_TEST_OUTPUT_SIZE 30720000)
set(CTEST_CUSTOM_MAXIMUM_PASSED_TEST_OUTPUT_SIZE 307200)

# ECP benchmarks 
ADD_TEST(ECP_TeaLeaf    bin/ECP_TeaLeaf.sh)
ADD_TEST(ECP_miniAero    bin/ECP_miniAero.sh)
ADD_TEST(ECP_kripke    bin/ECP_kripke.sh)
ADD_TEST(ECP_CLAMR    bin/ECP_CLAMR.sh)
ADD_TEST(ECP_miniTri    bin/ECP_miniTri.sh)
ADD_TEST(ECP_linearAlgebra    bin/ECP_linearAlgebra.sh)
ADD_TEST(ECP_ExaMiniMD    bin/ECP_ExaMiniMD.sh)
ADD_TEST(ECP_CoMD      bin/ECP_CoMD.sh)
ADD_TEST(ECP_AMG       bin/ECP_AMG.sh)
ADD_TEST(ECP_sw4lite       bin/ECP_sw4lite.sh)
ADD_TEST(ECP_quicksilver     bin/ECP_quicksilver.sh)
ADD_TEST(ECP_SimpleMOC     bin/ECP_SimpleMOC.sh)
ADD_TEST(ECP_PENNANT     bin/ECP_PENNANT.sh)
ADD_TEST(ECP_SWFFT     bin/ECP_SWFFT.sh)
ADD_TEST(ECP_EBMS     bin/ECP_EBMS.sh)
ADD_TEST(ECP_CoSP2    bin/ECP_CoSP2.sh)

# Trinity-Nersc benchmarks
ADD_TEST(Trinity_MDTest  bin/Trinity_MDTest.sh)
ADD_TEST(Trinity_SMB_mpiHeader     bin/Trinity_SMB_mpiHeader.sh)
ADD_TEST(Trinity_SMB_msgrate     bin/Trinity_SMB_msgrate.sh)
ADD_TEST(Trinity_ZiaTest bin/Trinity_ZiaTest.sh)
ADD_TEST(Trinity_MPIMemu bin/Trinity_MPIMemu.sh)
ADD_TEST(Trinity_OMB_MPI_pt2pt bin/Trinity_OMB_MPI_pt2pt.sh)
ADD_TEST(Trinity_OMB_MPI_one-sided bin/Trinity_OMB_MPI_one-sided.sh)
ADD_TEST(Trinity_OMB_MPI_collective bin/Trinity_OMB_MPI_collective.sh)
ADD_TEST(Trinity_GTC     bin/Trinity_GTC.sh)
ADD_TEST(Trinity_MiniFE  bin/Trinity_MiniFE.sh)
ADD_TEST(Trinity_MiniDFT  bin/Trinity_MiniDFT.sh)
ADD_TEST(Trinity_MILC bin/Trinity_MILC.sh)

# Coral benchamrks 
ADD_TEST(Coral_AMG2013    bin/Coral_AMG2013.sh)
ADD_TEST(Coral_HACC_IO    bin/Coral_HACC_IO.sh)
ADD_TEST(Coral_KMI_HASH    bin/Coral_KMI_HASH.sh)

# Mantevo benchmarks 
ADD_TEST(Mantevo_MiniSMAC2D bin/Mantevo_MiniSMAC2D.sh)
ADD_TEST(Mantevo_MiniEF     bin/Mantevo_MiniEF.sh)
ADD_TEST(Mantevo_MiniXyce   bin/Mantevo_MiniXyce.sh)
ADD_TEST(Mantevo_HPCCG      bin/Mantevo_HPCCG.sh)
ADD_TEST(Mantevo_MiniAMR    bin/Mantevo_MiniAMR.sh)
ADD_TEST(Mantevo_CloverLeaf    bin/Mantevo_CloverLeaf.sh)

# CodeVault benchmarks
ADD_TEST(CodeVault_PreExec  bin/CodeVault_PreExec.sh)
ADD_TEST(CodeVault_IntegralBasic  bin/CodeVault_IntegralBasic.sh)
ADD_TEST(CodeVault_Pi             bin/CodeVault_Pi.sh)
ADD_TEST(CodeVault_Prng           bin/CodeVault_Prng.sh)
ADD_TEST(CodeVault_DynSparse      bin/CodeVault_DynSparse.sh)
ADD_TEST(CodeVault_parallelio      bin/CodeVault_parallelio.sh)


