#!/bin/bash
MODULE=$1
TIME=`date "+%Y%m%d%H%M"`
GIT_REVISION=`git log -1 --pretty=format:"%h"`
IMAGE_NAME=zhugeaming/${MODULE}:${TIME}_${GIT_REVISION}
cd ${MODULE}
docker build -t ${GIT_REVISION} .
docker push ${GIT_REVISION}