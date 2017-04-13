#!/usr/bin/env bash

VERSION=5.7

sudo docker rmi percona_xtradb_cluster:${VERSION}
sudo docker rmi docker.registry.dthink.io/percona_xtradb_cluster:${VERSION}

sudo docker build -t percona_xtradb_cluster:${VERSION} image/
sudo docker tag percona_xtradb_cluster:${VERSION} docker.registry.dthink.io/percona_xtradb_cluster:${VERSION}
sudo docker push docker.registry.dthink.io/percona_xtradb_cluster:${VERSION}

#kubectl label node ha1.dtdream.com node=ha1.dtdream.com
#kubectl label node ha2.dtdream.com node=ha2.dtdream.com
#kubectl label node ha3.dtdream.com node=ha3.dtdream.com