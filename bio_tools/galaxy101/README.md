Files in this repository are a [Dockerized][docker] version of the [Galaxy 101][g101] toolset.

To use the contents of this repository, relevant tools need to be added
to a given [Galaxy][galaxy] instance. To do so, place the tool wrappers (ie,
XML files; see `download_wrappers.sh`) into `$GALAXY_HOME/tools/docker/` and
edit `$GALAXY_HOME/config/tool_conf.xml` to include those tools, for example:

    <section id="galaxy101d" name="Dockerized Galaxy 101 tools">
        <tool file="docker/join.xml"/>
        <tool file="docker/grouping.xml"/>
        <tool file="docker/sorter.xml"/>
        <tool file="docker/headWrapper.xml"/>
        <tool file="docker/compare.xml"/>
    </section>

> Some tool wrappers exist in the Galaxy source code distribution and are thus
> included with Galaxy instances by default but do not specify a wrapper version.
> This manifests itself with Galaxy not being able to distinguish between multiple
> wrapper versions. As a workaround, to have the Docker tools load in the tool
> panel without removing the distribuition tools from `tool_conf.xml`, place the
> Docker tool section at the bottom of the `tool_conf.xml` file.

Then, restart the Galaxy instance and the tools will be available. Note that the
machine running these tools' jobs needs to be able to run Docker containers.
Also note that the `Join` tool requires [operation_filter.py][op] to be made
available in the same directory as the tool's XML file (ie, `join.xml`).

[docker]: http://docker.io/
[g101]: https://usegalaxy.org/galaxy101
[galaxy]: http://galaxyproject.org
[op]: https://raw.githubusercontent.com/galaxyproject/tools-devteam/d155d6caf747a7c59ebd6d5752c942e63a75939f/tool_collections/gops/join/operation_filter.py
