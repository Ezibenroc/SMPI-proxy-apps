# SMPI Integration Testing

Proxy apps are scale models of real, massive HPC applications: each of
them exhibits the same communication and computation patterns than the
massive application that it stands for. But they last only a few
thousands lines instead of some millions of lines. These proxy apps
are usually provided for educational purpose, and also to ensure that
the represented large HPC applications will correctly work with the
next generation of runtimes and hardware. See also [this
explanation](http://lightsighter.org/posts/miniappredicament.html) of
the proxy apps' purpose.

SMPI is an implementation of MPI executing the application on top of
the SimGrid simulator. This allows to study the application behavior
in many details that would be hard to observe if not in a simulator,
or on platforms that do not exist yet. The predictive power of SMPI
was shown to be very good, provided that you correctly model the
target platform
[[&#128462;](https://hal.inria.fr/hal-01415484/file/smpi_article.pdf),
[&#128462;](https://hal.inria.fr/hal-01523608/file/predicting-energy-consumption-of-mpi-applications-with-a-single-node.pdf)]
while very scalable [[&#128462;](https://hal.inria.fr/hal-01544827/document)].

This repository gathers several collections of proxy apps, and reports
their support by the SMPI implementation. This is tested nightly on a
[dedicated jenkins server](https://ci.inria.fr/simgrid/job/SMPI-proxy-apps-multi/build_mode=SMPI,label=proxy-apps/).

[![Build Status](https://ci.inria.fr/simgrid/job/SMPI-proxy-apps-multi/build_mode=SMPI,label=proxy-apps/test/trend/png?width=400&height=300)](https://ci.inria.fr/simgrid/job/SMPI-proxy-apps-multi/build_mode=SMPI,label=proxy-apps/lastCompletedBuild/testReport/(root)/projectroot/)

# Full Scale Applications

In addition to the proxy apps testing presented here, some real-scale
HPC projects directly use SMPI as a basis for their regression and
integration tests:

| Application                                                                                                         | Build status                                                                                                                        |
|---------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| [BigDFT](http://bigdft.org) is a DFT massively parallel electronic structure code using a wavelet basis set. | [![Build Status](https://ci.inria.fr/simgrid/buildStatus/icon?job=SimGrid-BigDFT)](https://ci.inria.fr/simgrid/job/SimGrid-BigDFT/) |
| [StarPU](http://starpu.gforge.inria.fr/) is an unified runtime system for heterogeneous multicore architectures.    | [![Build Status](https://ci.inria.fr/simgrid/buildStatus/icon?job=SimGrid-StarPU)](https://ci.inria.fr/simgrid/job/SimGrid-StarPU/) |
|                                                                                                                     |                                                                                                                                     |


# [ECP Proxy Application](https://proxyapps.exascaleproject.org/app/)

| Benchmark                          |   Lines | Lang        | SMPI    | Patch                                                 |
|------------------------------------|--------:|-------------|---------|-------------------------------------------------------|
| [AMG](ECP.org#amg)                 |   4,658 | C           | :sunny: | [:ticket:](src/ECP/AMG/patch_AMG.diff)                |
| [CLAMR](ECP.org#clamr)             | 109,477 | C++         | :sunny: | [:ticket:](src/ECP/CLAMR/patch_clamr)                 |
| [CoMD](ECP.org#comd)               |   4,658 | C           | :sunny: | [:ticket:](src/ECP/CoMD/patch_CoMD.diff)              |
| [CoSP2](ECP.org#cosp2)             |   2,199 | C           | :sunny: | [:ticket:](src/ECP/CoSP2/patch_CoSP2.diff)            |
| [CloverLeaf](ECP.org#cloverleaf)   |  37,477 | C, F90      | :sunny: | [:ticket:](src/ECP/CloverLeaf/patch_CloverLeaf.diff)  |
| [EBMC rget](ECP.org#ebmc)          |     841 | C++, F90    | :sunny: | :black_small_square:                                  |
| [ExaMiniMD](ECP.org#examinimd)     |   6,184 | C++         | :sunny: | :black_small_square:                                  |
| [HPCCG](ECP.org#hpccg)             |   1,548 | C++         | :sunny: | [:ticket:](src/ECP/HPCCG/patch_HPCCG.diff)            |
| [Kripke](ECP.org#kriple)           | 109,477 | C++         | :sunny: | [:ticket:](src/ECP/kripke/patch_kripke.diff)          |
| [MINITRI](ECP.org#minitri)         |   1,534 | C++         | :sunny: | :black_small_square:                                  |
| [MiniAero](ECP.org#miniaero)       |   4,645 | C++         | :sunny: | [:ticket:](src/ECP/miniAero/patch_makefile.diff)      |
| [MiniAMR](ECP.org#miniamr)         |   8,329 | C           | :sunny: | [:ticket:](src/ECP/MiniAMR/patch_MiniAMR.diff)        |
| [MiniFE-evo](ECP.org#minief)       |  19,907 | C           | :sunny: | [:ticket:](src/ECP/MiniEF-evo/patch_MiniFE.diff)      |
| [MiniMD](ECP.org#minimd)           |   9,344 | C++         | :sunny: | [:ticket:](src/ECP/MiniMD/patch_miniMD_Makefile.diff) |
| [MiniSMAC2D](ECP.org#minismac2d)   |   8,329 | F90         | :sunny: | [:ticket:](src/ECP/MiniSMAC2D)                        |
| [MiniXyce](ECP.org#minixyce)       |   2,020 | C++         | :sunny: | [:ticket:](src/ECP/MiniXyce/patch_MiniXyce.diff)      |
| [PENNANT](ECP.org#pennant)         |   3,464 | C++         | :sunny: | [:ticket:](src/ECP/PENNANT)                           |
| [Quicksilver](ECP.org#quicksilver) |   9,821 | C++         | :sunny: | [:ticket:](src/ECP/Quicksilver)                       |
| [SimpleMOC](ECP.org#simplemoc)     |   2,864 | C           | :sunny: | [:ticket:](src/ECP/SimpleMOC/patch_SimpleMOC.diff)    |
| [SNBONE](ECP.org#snbone)           |   5,897 | F90         | :sunny: | [:ticket:](src/ECP/SNbone)                            |
| [SWFFT](ECP.org#swfft)             |   3,827 | C++, C, F90 | :sunny: | :black_small_square:                                  |
| [Sw4lite](ECP.org#sw4lite)         |  48,436 | C           | :sunny: | :black_small_square:                                  |
| [TeaLeaf](ECP.org#tealeaf)         |   5,729 | F90         | :sunny: | [:ticket:](src/ECP/TeaLeaf/patch_tealeaf.diff)        |
| [VPFFT](ECP.org#vpfft)             |   3,384 | C++         | :sunny: | [:ticket:](src/ECP/VPFFT/patch_vpfft.diff)            |

The following apps of this collection are not included:
  - Requiring OpenMP: PathFinder, CoHMM, NuT, LCALS, RSBench, CoGL, ASPA, XSBench, Tycho2, MiniGMG, SNAP, Nekbone, Clover3D
  - Laghos (depends on HYPRE, METIS, MFEM)
  - FleCSALE (depends on Exodus, FleCSI, ParMETIS)
  - HPGMG (depends on PETSc, OpenMP)
  - MiniGhost (depends on HDF5, H5Part)
  - PlasmApp (depends on Tirilinos)
  - AMR_Exp_Parabolic (code source not available)
  - EBMC (SMPI does not support iallgather)
  - RajaPerformanecesuite (requires MPI calls not supported by SMPI)


# [CORAL benchmarks](https://asc.llnl.gov/CORAL-benchmarks/)

| Benchmark                      | Lines  | Lang | SMPI    | Patch                                                                                 |
|--------------------------------|-------:|------|---------|---------------------------------------------------------------------------------------|
| [amg2013](Coral.org#amg2013)   | 75,000 | C    | :sunny: | [:ticket:](src/Coral/AMG2013/patch_AMG2013.diff)                                      |
| [HACCIO](Coral.org#hacc_io)    | 2,000  | C++  | :sunny: | [:ticket:](src/Coral/HACC_IO/patch_HACCIO.diff)                                       |
| [KMI_HASH](Coral.org#kmi_hash) | 4,239  | C    | :sunny: | [:ticket:](https://github.com/simgrid/SMPI-proxy-apps/tree/master/src/Coral/kmi_hash) |
| [LULESH](Coral.org#lulesh)     | 5,000  | C    | :sunny: | [:ticket:](src/Coral/Lulesh/patch_lulesh.diff)                                        |

The following apps of this collection are not included:
- Requiring OpenMP: UMT2013
  ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/UMT2013_Summary_v1.2.pdf)
  [:package:](https://asc.llnl.gov/CORAL-benchmarks/Throughput/UMT2013-20140204.tar.gz)),
  MCB
  ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/MCB_Summary_v1.1.pdf)
  [:package:](https://asc.llnl.gov/CORAL-benchmarks/Throughput/mcb-20130723.tar.gz))
  QMCPACK
  ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/QMCPACK_Summary_v1.2.pdf)
  [:package:](https://asc.llnl.gov/CORAL-benchmarks/Throughput/qmcpack-coral20131203.tar.gz)),
  integer_sort
  ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/BigSort_Summary_v1.1.pdf)
  [:package:](https://asc.llnl.gov/CORAL-benchmarks/Datacentric/BigSort-20130808.tar.bz2))
  CLOMP
  ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/CLOMP_Summary_v1.2.pdf)
  [:package:](https://asc.llnl.gov/CORAL-benchmarks/Skeleton/clomp_v1.2.tar.gz)),
  Graph500, SPECint2006"peak", Memory benchmarks,
  CLOMP, FTQ, XSBench, NEKbonemk, HACCmk, UMTmk, AMGmk, MILCmk,
  GFMCmk.
- Using Python: Pynmaic.
- LSMS ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/LSMS_Summary_v1.1.pdf)[:package:](https://asc.llnl.gov/CORAL-benchmarks/Science/LSMS_3_rev237.tar.bz2))
  Depends on HDF5
- QBOX ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/QBox_Summary_v1.2.pdf)[:package:](https://asc.llnl.gov/CORAL-benchmarks/Science/qball_r140b.tgz))
  Depends on OpenMP, Blas, LAPACK.
- CAM-SE ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/CAMSE_Summary_v1.1.pdf)[:package:](https://asc.llnl.gov/CORAL-benchmarks/Throughput/homme1_3_6_mira_2.tgz))
  Depends on NETCDF, Lapack, cBlas.
- NAMD ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/NAMD_Summary_v1.0.pdf)[:package:](https://asc.llnl.gov/CORAL-benchmarks/Throughput/namd-src.tar.gz))
  Requires mpixlc.
- IOR ([:book:](https://asc.llnl.gov/CORAL-benchmarks/Summaries/IOR_Summary_v1.0.pdf)[:package:](https://asc.llnl.gov/CORAL-benchmarks/Skeleton/IOR.CORAL.1.tar.gz))
  Requires MPI ICC


# [Trinity-Nersc benchmarks](http://www.nersc.gov/users/computational-systems/cori/nersc-8-procurement/trinity-nersc-8-rfp/nersc-8-trinity-benchmarks/) 

  
| Benchmark                                              |  Lines  | Lang     | SMPI    | Patch                                                                |
|--------------------------------------------------------|--------:|--------- |---------|----------------------------------------------------------------------|
| [SMB - mpiheader](Trinity-Nersc.org#smb_mpioverheader) |     418 | C        | :sunny: | [:ticket:](src/Trinity-Nersc/smb/mpi_overhead)                       |
| [SMB - msgrate](Trinity-Nersc.org#smb_msgrate)         |     362 | C        | :sunny: | [:ticket:](src/Trinity-Nersc/smb/msgrate/patch_MsgrateMakefile.diff) |
| [ziatest](Trinity-Nersc.org#ziatest)                   |     255 | C        | :sunny: | [:ticket:](src/Trinity-Nersc/ziatest)                                |
| [mdtest](Trinity-Nersc.org#mdtest)                     |   2,187 | C        | :sunny: | [:ticket:](src/Trinity-Nersc/mdtest/patch_mdtest.diff)               |
| [mpimemu](Trinity-Nersc.org#mpimemu)                   |   4,980 | C        | :sunny: | :black_small_square:                                                 |
| [OMB_MPI (pt2pt)](Trinity-Nersc.org#pt2pt)             |   1,406 | C        | :sunny: | :black_small_square:                                                 |
| [OMB_MPI (one-sided)](Trinity-Nersc.org#one-sided)     |   1,679 | C        | :sunny: | :black_small_square:                                                 |
| [OMB_MPI (collective)](Trinity-Nersc.org#collective)   |   1,269 | C        | :sunny: | :black_small_square:                                                 |
| [MiniFE](Trinity-Nersc.org#minife)                     |   4,968 | C++      | :sunny: | [:ticket:](src/Trinity-Nersc/MiniFE/patch_miniFE.diff)               |
| [GTC](Trinity-Nersc.org#gtc)                           |   5,591 | F90      | :sunny: | [:ticket:](src/Trinity-Nersc/GTC/patch_gtc.diff)                     |
| [MILC](Trinity-Nersc.org#milc)                         |  82,645 | C        | :sunny: | [:ticket:](src/Trinity-Nersc/MILC/patch_MILC.diff)                   |
| [MiniDFT](Trinity-Nersc.org#minidft)                   |  30,874 | C, F90   | :x:     |                                                                      |

The following apps of this collection are not included:
- Requiring OpenMP: psnap
  ([:book:](http://www.nersc.gov/users/computational-systems/cori/nersc-8-procurement/trinity-nersc-8-rfp/nersc-8-trinity-benchmarks/psnap/)[:package:](http://www.nersc.gov/assets/Trinity--NERSC-8-RFP/Benchmarks/June28/psnap-1.2June28.tar)),
  Stream
  ([:book:](http://www.nersc.gov/users/computational-systems/cori/nersc-8-procurement/trinity-nersc-8-rfp/nersc-8-trinity-benchmarks/stream/)[:package:](http://www.nersc.gov/assets/Trinity--NERSC-8-RFP/Benchmarks/Jan9/stream.tar))
- UPC-FC
  ([:book:](http://www.nersc.gov/users/computational-systems/cori/nersc-8-procurement/trinity-nersc-8-rfp/nersc-8-trinity-benchmarks/npb-upc-ft/)[:package:](http://www.nersc.gov/assets/Trinity--NERSC-8-RFP/Benchmarks/Jan9/UPC-FT.tar)):
  Depending on UPC
- Using Python: UMT.

# [CodeVault benchmarks](https://repository.prace-ri.eu/git/PRACE/CodeVault)
| Benchmark                                  |  Lines | Lang | SMPI    | Patch                                                         |
|--------------------------------------------|-------:|------|---------|---------------------------------------------------------------|
| [Parallel_io](CodeVault.org#parallel_io)   |  1,338 | C++  | :sunny: | [:ticket:](src/CodeVault/parallel_io/patch_basicMPIIO.diff)   |
| [MCM](CodeVault.org#mcm)                   |    453 | C++  | :sunny: | [:ticket:](src/CodeVault/monte_carlo_methods)                 |
| [n-Body_methods](CodeVault.org#dyn-sparse) |  2,401 | C++  | :sunny: | [:ticket:](src/CodeVault/n-body_methods/patch_dynSparse.diff) |

The following apps of this collection are not included:

- Requesting OpenMP: Dense_linear_algebra, N-body_methods (bhtree, hermite4, naive), Structured_grids.
- Using unsupported MPI primitives : Unstructed_grid (halo exchange)
- Sparse_linear_algebra (depends on PETSc)
- Spectral_methods (depends on OpenMP, CUDA, OpenCL, FFTW)
- Unstructured_grids ( depends on libmesh)

Issues : n-body_methods-bhtree_mpi (issue with Body.cpp)

# [MeteoFrance Proxy Applications](https://zenodo.org/record/1066934#.WyImghyxU5l)

| Benchmark                         | Lines | Lang | SMPI    | Patch                |
|-----------------------------------|------:|------|---------|----------------------|
| [GCR](MeteoFrance.org#gcr)        |   504 | C++  | :sunny: | :black_small_square: |
| [Halo](MeteoFrance.org#halo)      |  1910 | C++  | :x:     |                      |
| [Transpose](MeteoFrance.org#halo) |  2554 | C++  | :x:     |                      |

# Legend
| Symbol         | Meaning                                  | Symbol               | Meaning              |
|----------------|------------------------------------------|----------------------|----------------------|
| :sunny:        | Execution successful                     | :ticket:             | Patch provided       |
| :x:            | Execution fails                          | :black_small_square: | No patch needed      |
| :partly_sunny: | Done successfully but with some warnings | :construction:       | SMPI missing feature |
| :beetle:       | Has an open issue                        |                      |                      |
| :book:         | Compilation instructions                 | :package:            | Source code          |
