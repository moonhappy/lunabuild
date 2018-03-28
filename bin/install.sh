#!/usr/bin/env bash

GIT_IGNORE=`find . | grep .gitignore`
CI_BUILD_SH=`find . | grep lunaci.sh`
CI_GITLAB=`find . | grep .gitlab-ci.yml`

echo "dist/" >> GIT_IGNORE
echo "build/" >> GIT_IGNORE
echo "binaries/" >> GIT_IGNORE
cp CI_BUILD_SH .
cp CI_GITLAB .
