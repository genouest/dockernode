FROM centos:6
MAINTAINER Olivier Sallou

LABEL Description="Base image to use softwares available at GenOuest BioInformatics Platform" Vendor="GenOuest"

RUN yum install -y openssh-server
RUN yum install -y mysql tcsh zsh glibc-devel glibc-headers blas lapack atlas libstdc++ libstdc++-devel git subversion xemacs xorg-x11-xinit
RUN yum install -y openssl openssl098e compat-libf2c-34 xmlsec1 cairo gcc gcc-c++ gcc-gfortran gsl gsl-devel kernel-headers libgfortran
RUN yum install -y libgomp pcre-devel tcl-devel python libXtst
RUN yum install -y libxml2 procmail gd-devel libxslt xorg-x11-fonts-100dpi xorg-x11-fonts-Type1 ghostscript-fonts ghostscript xorg-x11-fonts-75dpi
RUN yum install -y hwloc tbb libconfig compat-gcc-34-g77 ftp libibverbs curl libcurl-devel python-devel netcdf cmake
RUN yum install -y ant python-pip python-virtualenv rvm make libxml2-devel

RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

RUN mkdir -p /softs/local
RUN ln -s /softs/local  /local
