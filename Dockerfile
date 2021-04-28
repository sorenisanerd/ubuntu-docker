FROM ubuntu:latest

RUN apt-get update && apt-get install -y debootstrap
RUN debootstrap focal chroot

FROM scratch
COPY --from=0 chroot /
RUN apt-get -y update
RUN apt-get -y install man curl wget
