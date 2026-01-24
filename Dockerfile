FROM quay.io/pypa/manylinux_2_28_x86_64

# CUDA repo setup
RUN yum install -y \
    yum-utils \
    && yum-config-manager --add-repo \
       https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/cuda-rhel8.repo \
    && yum clean all

# Install CUDA components you need
RUN yum install -y \
    cuda-nvcc-12-3 \
    libcufft-devel-12-3 \
    libcurand-devel-12-3 \
    && yum clean all

