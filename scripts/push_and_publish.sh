#!/usr/bin/env bash

git add . 
git commit -m "$1"
./publish_prod.sh


