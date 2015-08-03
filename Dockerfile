FROM ubuntu:trusty

RUN apt-get install -y build-essentials vim

# Clean up the dangling configurations and files
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
