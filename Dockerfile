#Based on: https://medium.com/@urban_institute/fortran-and-docker-how-to-combine-legacy-code-with-cutting-edge-components-35e934b15023

FROM centos:centos7.6.1810
LABEL maintainer="Collin Kleine <collin.kleine@gmail.com>"
RUN yum update -y

# add fortran, c++ compiler, wget, debugging tools, gsl, and make
RUN yum install -y gfortran gcc-gfortran gdb make wget gcc-c++ gsl gsl-devel

# Download, compile and install dependency mpich
RUN mkdir /mpich && cd /mpich/ && wget http://www.mpich.org/static/downloads/3.3/mpich-3.3.tar.gz && tar xfz ./mpich-3.3.tar.gz && cd mpich-3.3 && ./configure && make && make install

# Download, unpack and copy files for TRIGRS. Compile TRIGRS. Copy output files to bin folder
RUN mkdir /trigrs && cd /trigrs/ && wget https://code.usgs.gov/usgs/landslides-trigrs/uploads/8805b8c629849bf7592e6abde427f0d1/landslides-trigrs-2.1.0.tar.gz && tar -xzf ./landslides-trigrs-2.1.0.tar.gz && cd landslides-trigrs-2.1.0/src/TRIGRS/ && cp -n ../TopoIndex/* ./ && make && mkdir /trigrs/landslides-trigrs-2.1.0/bin/ && cp prg tpx trg ../../bin

WORKDIR /trigrs/landslides-trigrs-2.1.0/bin/

# configure the container to run the tpx executable by default (needs input file)
CMD ["./tpx"]
