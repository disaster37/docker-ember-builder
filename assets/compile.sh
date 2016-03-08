#!/bin/bash

set -e

# Set directory to where we expect code to be
cd /node/src/${SOURCE_PATH}

echo "Downloading npm dependencies"
npm install

echo "Downloading bower dependencies"
bower install


echo "Run test"
ember test


echo "Building source"
ember build
