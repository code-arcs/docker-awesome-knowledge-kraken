#!/bin/bash

copyResource() {
    printf "Bundling %s" $1
    rm -rf ./$1/bundle
    cp -R ../$1/ ./$1/bundle
    rm -rf ./$1/bundle/.git ./$1/bundle/.idea ./$1/bundle/node_modules
}
      
copyResource kraken-website-tentacle