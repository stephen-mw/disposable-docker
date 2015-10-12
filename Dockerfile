FROM ubuntu:trusty

# Sets up the apt-cacher
RUN echo 'Acquire::http { proxy "http://172.17.0.1:3142"; };' > /etc/apt/apt.conf.d/02proxy

RUN apt-get update  -y
RUN apt-get install -y --no-install-recommends  \
  build-essential \
  curl            \
  git             \
  golang          \
  mosh            \
  nmap            \
  psmisc          \
  python          \
  python-pip      \
  screen          \
  vim             \
  wget
