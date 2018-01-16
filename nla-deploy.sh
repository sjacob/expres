#!/usr/bin/env bash

mvn verify clean package

mkdir -p $1/lib

cp application/target/*.war $1/lib/