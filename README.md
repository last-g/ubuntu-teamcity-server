# ubuntu-teamcity-server
Docker image for teamcity

## Pull
`docker pull lastg/ubuntu-teamcity-server`

## or build
`./build.sh`

## then run
`docker run -dt -p 8111:8111 -v /var/teamcity/:/var/teamcity --name teamcity-server lastg/ubuntu-teamcity-server`

all data will be stored in `/var/teamcity/`

## Based on 
https://hub.docker.com/r/ariya/centos6-teamcity-server
