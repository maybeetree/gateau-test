# Info for maintainers

Info for maintainers is available in the docs (
[html](https://tifuun.github.io/gateau/maintainers.html),
[source](./doxy/maintainers.dox)
)


---

ubuntu no cc

```
Processing /dist/gateau-0.2.2.tar.gz
  Installing build dependencies ... done
  Getting requirements to build wheel ... done
  Installing backend dependencies ... done
    Preparing wheel metadata ... error
    ERROR: Command errored out with exit status 1:
     command: /venv/bin/python3.9 /tmp/tmpt0g2yj3m_in_process.py prepare_metadata_for_build_whe
el /tmp/tmp3mfvm0xi
         cwd: /tmp/pip-req-build-e80w_flj
    Complete output (20 lines):
    + meson setup /tmp/pip-req-build-e80w_flj /tmp/pip-req-build-e80w_flj/.mesonpy-ksppikbp -Db
uildtype=release -Db_ndebug=if-release -Db_vscrt=md --native-file=/tmp/pip-req-build-e80w_flj/.
mesonpy-ksppikbp/meson-python-native-file.ini
    The Meson build system
    Version: 1.10.1
    Source dir: /tmp/pip-req-build-e80w_flj
    Build dir: /tmp/pip-req-build-e80w_flj/.mesonpy-ksppikbp
    Build type: native build
    Project name: gateau
    Project version: 0.2.2
    
    ../meson.build:1:0: ERROR: Unknown compiler(s): [['cc'], ['gcc'], ['clang'], ['nvc'], ['pgc
c'], ['icc'], ['icx']]
    The following exception(s) were encountered:
    Running `cc --version` gave "[Errno 2] No such file or directory: 'cc'"
    Running `gcc --version` gave "[Errno 2] No such file or directory: 'gcc'"
    Running `clang --version` gave "[Errno 2] No such file or directory: 'clang'"
    Running `nvc --version` gave "[Errno 2] No such file or directory: 'nvc'"
    Running `pgcc --version` gave "[Errno 2] No such file or directory: 'pgcc'"
    Running `icc --version` gave "[Errno 2] No such file or directory: 'icc'"
    Running `icx --version` gave "[Errno 2] No such file or directory: 'icx'"
    
    A full log can be found at /tmp/pip-req-build-e80w_flj/.mesonpy-ksppikbp/meson-logs/meson-l
og.txt
    ----------------------------------------
ERROR: Command errored out with exit status 1: /venv/bin/python3.9 /tmp/tmpt0g2yj3m_in_process.
py prepare_metadata_for_build_wheel /tmp/tmp3mfvm0xi Check the logs for full command output.
/venv/bin/python: No module named gateau
```

no pkg-config

```

+ docker run --rm -ti -v ./dist:/dist:ro gateau-ubuntu-20-04 sh -c '. /venv/bin/activate; pip i
nstall /dist/*.tar.gz ; python -m gateau'
Processing /dist/gateau-0.2.2.tar.gz
  Installing build dependencies ... done
  Getting requirements to build wheel ... done
  Installing backend dependencies ... done
    Preparing wheel metadata ... error
    ERROR: Command errored out with exit status 1:
     command: /venv/bin/python3.9 /tmp/tmppw6sqwru_in_process.py prepare_metadata_for_build_whe
el /tmp/tmp6v7ncexp
         cwd: /tmp/pip-req-build-z5nlf0xq
    Complete output (30 lines):
    + meson setup /tmp/pip-req-build-z5nlf0xq /tmp/pip-req-build-z5nlf0xq/.mesonpy-2uqnmplq -Db
uildtype=release -Db_ndebug=if-release -Db_vscrt=md --native-file=/tmp/pip-req-build-z5nlf0xq/.
mesonpy-2uqnmplq/meson-python-native-file.ini
    The Meson build system
    Version: 1.10.1
    Source dir: /tmp/pip-req-build-z5nlf0xq
    Build dir: /tmp/pip-req-build-z5nlf0xq/.mesonpy-2uqnmplq
    Build type: native build
    Project name: gateau
    Project version: 0.2.2
    C compiler for the host machine: cc (gcc 9.4.0 "cc (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0")
    C linker for the host machine: cc ld.bfd 2.34
    C++ compiler for the host machine: c++ (gcc 9.4.0 "c++ (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.
0")
    C++ linker for the host machine: c++ ld.bfd 2.34
    Cuda compiler for the host machine: nvcc (nvcc 12.3.107
    Build cuda_12.3.r12.3/compiler.33567101_0)
    Cuda linker for the host machine: nvcc nvlink 12.3.107
    Build cuda_12.3.r12.3/compiler.33567101_0
    Host machine cpu family: x86_64
    Host machine cpu: x86_64
    Program python found: YES (/venv/bin/python3.9)
    Run-time dependency CUDA (modules: cudart_static, cufft) found: YES 12.3 (/usr/local/cuda)
    Message: Meson could find cuda libraries normally, yay!
    Did not find pkg-config by name 'pkg-config'
    Found pkg-config: NO
    Did not find CMake 'cmake'
    Found CMake: NO
    Run-time dependency gsl found: NO
    
    ../meson.build:111:6: ERROR: Dependency lookup for gsl with method 'pkgconfig' failed: Pkg-
config for machine host machine not found. Giving up.
    
    A full log can be found at /tmp/pip-req-build-z5nlf0xq/.mesonpy-2uqnmplq/meson-logs/meson-l
og.txt
    ----------------------------------------
ERROR: Command errored out with exit status 1: /venv/bin/python3.9 /tmp/tmppw6sqwru_in_process.
py prepare_metadata_for_build_wheel /tmp/tmp6v7ncexp Check the logs for full command output.
/venv/bin/python: No module named gateau
```
