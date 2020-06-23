# simple_web_server
a simple web server with docker

### Running the Server

First clone this repository with the command

```git clone https://github.com/zudebluvstein/simple_web_server.git```

This must be run on a local machine

Make sure docker and docker-compose are installed on the local machine

`service docker status` can let you know if the docker daemon is running

`which docker-compose` can let you see if docker-compose exists.

`cd simple_web_server` to change your working directory into the cloned repository

Run `docker-compose up -d` to run the server in a container

### Testing the Server

While still in the cloned repository, double check that `connection_test.sh` is executable by using

```chmod 750 connection_test.sh```

Then run the script by using the command `./connection_test.sh`

