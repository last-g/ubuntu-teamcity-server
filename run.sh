#!/bin/bash

docker run -dt -p 8111:8111 -v /var/teamcity/:/var/teamcity --name teamcity-server lastg/ubuntu-teamcity-server

