#!/bin/bash

apt update

apt -y install petsc-dev
apt -y remove petsc-dev
su - ubuntu
git clone -b release https://gitlab.com/petsc/petsc.git petsc
cd petsc/
./configure
make all check
