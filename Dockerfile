# Use Alpine Linux for a minimal footprint (~7MB base)
FROM alpine:latest

# Install NASM, QEMU (x86_64 system & user emulation), binutils, make, and nano
RUN apk add --no-cache \
    nasm \
    qemu-system-x86_64 \
    qemu-x86_64 \
    binutils \
    make \
    nano

# Set the working directory inside the container
WORKDIR /workspace

# Default to an interactive shell
CMD ["/bin/sh"]
