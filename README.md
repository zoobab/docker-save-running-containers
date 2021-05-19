[![noswpatv3](http://zoobab.wdfiles.com/local--files/start/noupcv3.jpg)](https://ffii.org/donate-now-to-save-europe-from-software-patents-says-ffii/)
# docker-save-running-containers

docker-save-running-containers.sh is a simple script to save running containers into images with a timestamp added in their tagname.

Example:

    zoobab@sabayon /home/zoobab [6]$ sudo docker ps
    CONTAINER ID        IMAGE                             COMMAND             CREATED             STATUS              PORTS               NAMES
    9e4aae6d1341        debian:wheezydev4-030215_183542   "/bin/bash"         2 minutes ago       Up 2 minutes                            grave_meitner       
    73289231d4e1        debian:wheezydev4-030215_183542   "/bin/bash"         24 minutes ago      Up 24 minutes                           silly_perlman       

    zoobab@sabayon /home/zoobab [4]$ sudo ./docker-save-running-ps.sh 
    Saving running CTID 9e4aae6d1341 to debian:wheezydev4-031315_112917
    1479f0869f6a2f3f8c9955cc7d2e7090c9e7cb2f3ac18907e706349bdd1d27da
    Saving running CTID 9c52fc67c612 to luisalejandro/debian-i386:latest-031315_112937
    e47fa862dda96b18f46c3d21c6aa3242fb85b80aee6e96366cef6880910c8e1b
    Saving running CTID 73289231d4e1 to debian:wheezydev4-031315_112938
    36b4e60849371916c5bd57562f69bda8169342bfe336b7a04308ec05267f86ef
    zoobab@sabayon /home/zoobab [5]$ 

    root@sabayon /home/zoobab/soft/docker-save-running-containers [1]# docker images
    REPOSITORY                  TAG                        IMAGE ID            CREATED             VIRTUAL SIZE
    debian                      wheezydev4-031315_111428   d22d70a387bf        2 minutes ago       4.301 GB
    luisalejandro/debian-i386   latest-031315_111427       430a2c127c49        2 minutes ago       53.82 MB
    luisalejandro/debian-i386   latest                     7902e3f5c3f8        9 months ago        53.82 MB
