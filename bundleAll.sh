#!/bin/bash

copyResource() {
    SOURCE=$1
    TARGET=$2
    
    if [ -z $2 ]
    then
        TARGET=$1
    fi 
    
    printf "Bundling %s...\n" $1
    rm -rf ./$TARGET/bundle/*
    cp -R ../$SOURCE/ ./$TARGET/bundle
    rm -rf ./$TARGET/bundle/.git ./$TARGET/bundle/.idea ./$TARGET/bundle/node_modules
}

copyResource kraken-website-tentacle