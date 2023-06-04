# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/webtop:ubuntu-kde

# set version label
LABEL build_version="CIS5510 version:- 2.1 Build-date:- 6/4/2023"
LABEL maintainer="jlowell@seas.upenn.edu"

# Adding CIS-5510 setup files to image 
ADD ./setup/config.tar.gz /
RUN rm -r /usr/share/wallpapers/Next/contents/images && cp -r /build/images /usr/share/wallpapers/Next/contents && mv /build/custom-cont-init.d /
