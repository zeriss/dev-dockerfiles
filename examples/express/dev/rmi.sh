#!/bin/bash

# Retrieve current directory
DIR="$( cd "$( dirname "$0" )" && pwd )"

$DIR/rm.sh

docker rmi express-nodejs-image express-nginx-image
