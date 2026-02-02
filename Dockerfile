FROM quay.io/pypa/manylinux_2_28_x86_64

# The base image here is AlmaLinux
# Never heard of AlmaLinux before?
# Me neither.

# CUDA repo setup
RUN \
	yum install -y yum-utils && \
	yum-config-manager --add-repo \
		https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/cuda-rhel8.repo \
		&& \
	yum clean all && \
	:

# CUDA
RUN \
	yum install -y \
		cuda-nvcc-12-3 \
		libcufft-devel-12-3 \
		libcurand-devel-12-3 \
		cuda-cudart-devel-12-3 `# needed only on almalinux?? ` \
		&& \
	yum clean all && \
	:

# Build tools
RUN \
	yum install -y \
		`#gcc` \
		`#gcc-c++ ``# This is gcc` \
		&& \
	yum clean all && \
	:

# gcc 12
# Base image already comes with gcc 14
# which is not compatible with cuda 12-3
RUN \
	yum install -y \
		gcc-toolset-12-gcc \
		gcc-toolset-12-gcc-c++ \
		&& \
	yum clean all && \
	:

### Fix env vars ###

# CUDA
ENV PATH=/usr/local/cuda/bin:${PATH}

# switch from gcc 14 to gcc 12 for cuda compatibility
ENV PATH=/opt/rh/gcc-toolset-12/root/usr/bin:$PATH
ENV LD_LIBRARY_PATH=/opt/rh/gcc-toolset-12/root/usr/lib64:$LD_LIBRARY_PATH

