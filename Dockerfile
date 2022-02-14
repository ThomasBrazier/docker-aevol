FROM debian:bullseye
 
ENV DEBIAN_FRONTEND=noninteractive
 
RUN apt update \
  && apt install -y --no-install-recommends \
  git \
  g++ \
  build-essential \
  cmake \
  zlib1g-dev \
  libboost-dev \
  libx11-dev \
  libssl-dev \
  libgmp-dev \
  libmpfr-dev \
  libgsl-dev \
  libgsl0-dev \
  aevol \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /mnt
