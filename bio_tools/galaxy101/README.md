Files in this repository are a [Dockerized][docker] version of the [Galaxy 101][g101] toolset.

To use the contents of this repository, relevant tools need to be added
to a given [Galaxy][galaxy] instance. To do so, place the tool wrappers (ie,
XML files) into `$GALAXY_HOME/tools/docker/` and edit
`$GALAXY_HOME/config/tool_conf.xml` to include those tools, for example:

    <section id="galaxy101d" name="Dockerized Galaxy 101 tools">
        <tool file="docker/join.xml"/>
        <tool file="docker/grouping.xml"/>
        <tool file="docker/sorter.xml"/>
        <tool file="docker/headWrapper.xml"/>
        <tool file="docker/compare.xml"/>
    </section>

Then, restart the Galaxy instance and the tools will be available. Note that the machine running these tools'
jobs needs to be able to run Docker containers.

[docker]: http://docker.io/
[g101]: https://usegalaxy.org/galaxy101
[galaxy]: http://galaxyproject.org
