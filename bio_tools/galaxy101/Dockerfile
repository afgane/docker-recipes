FROM ubuntu:14.04

MAINTAINER Enis Afgan <enis.afgan@jhu.edu>

# Setup the system
RUN apt-get update -qq --fix-missing; \
  apt-get install -qq -y wget python python-pip python-dev zlib1g-dev;

RUN pip install numpy
RUN pip install bx-pyton

RUN mkdir /tools
RUN cd /tools

# Install Join tool
RUN wget -O gops_join.py https://raw.githubusercontent.com/galaxyproject/tools-devteam/d155d6caf747a7c59ebd6d5752c942e63a75939f/tool_collections/gops/join/gops_join.py
RUN ln -s /tools/gops_join.py /usr/bin
RUN chmod a+x /tools/gops_join.py

# Install Sort tool
RUN wget -O sorter.py https://bitbucket.org/galaxy/galaxy-central/raw/37fb229769f4a1cc02d7df26790c5c6f13e913d6/tools/filters/sorter.py
# Add the shebang line to the script to make it standalone
RUN sed -i '1s/^/#!\/usr\/bin\/env python\n/' sorter.py
RUN ln -s /tools/sorter.py /usr/bin
RUN chmod a+x /tools/sorter.py


# Install Grouping tool
RUN wget -O grouping.py https://bitbucket.org/galaxy/galaxy-central/raw/37fb229769f4a1cc02d7df26790c5c6f13e913d6/tools/stats/grouping.py
RUN ln -s /tools/grouping.py /usr/bin
RUN chmod a+x /tools/grouping.py