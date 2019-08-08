# samba-server

This docker images enables you to make public writable shares in samba. Samba
is an open source Linux software that is used to create shared folder that can
be accessed from Windows machines.

## Build the docker image

    docker build -t samba-server https://github.com/eana/samba-server.git

## Hosting a Samba instance

    docker run -it -p 139:139 -p 445:445 -d samba-server

OR set local storage:


    docker run -it --name samba-server -p 139:139 -p 445:445 \
           -v /path/to/directory:/share \
           -d samba-server
