#!/bin/bash
#
# A convenience script to download all the tool wrappers. This needs to
# be run from GALAXY_HOME

mkdir tools/docker

wget -O tools/docker/join.xml https://raw.githubusercontent.com/afgane/docker-recipes/master/bio_tools/galaxy101/join.xml
wget -O tools/docker/operation_filter.py https://raw.githubusercontent.com/galaxyproject/tools-devteam/d155d6caf747a7c59ebd6d5752c942e63a75939f/tool_collections/gops/join/operation_filter.py

wget -O tools/docker/grouping.xml https://raw.githubusercontent.com/afgane/docker-recipes/master/bio_tools/galaxy101/grouping.xml

wget -O tools/docker/sorter.xml https://raw.githubusercontent.com/afgane/docker-recipes/master/bio_tools/galaxy101/sorter.xml

wget -O tools/docker/headWrapper.xml https://raw.githubusercontent.com/afgane/docker-recipes/master/bio_tools/galaxy101/headWrapper.xml

wget -O tools/docker/compare.xml https://raw.githubusercontent.com/afgane/docker-recipes/master/bio_tools/galaxy101/compare.xml
