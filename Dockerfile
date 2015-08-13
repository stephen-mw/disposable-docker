FROM ubuntu:trusty

RUN apt-get update -y
RUN apt-get install -y --no-install-recommends  \
  build-essential \
  vim             \
  python          \
  python-pip      \
  golang          \
  nmap            \
  tcpdump         \
  wget            \
  mosh

# Clean up the dangling configurations and files
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

expose 22
