# Setup for running devpi

This runs [devpi](https://devpi.net)
using the [coatl-dev docker image](https://github.com/coatl-dev/docker-devpi).

## Usage

    docker compose up -d


This service can be accessed inside of a docker container using `host.docker.internal`.
For example:

    FROM python:3
    CMD pip install --trusted-host host.docker.internal -i http://host.docker.internal:3141/root/pypi/+simple/ django


## License

MIT
