#!/bin/bash

source ./var.ini

script=./bosh_to_cloud.sh

# a key which can identify the only deployment
dep_key=$1
# a key which can identify the vm type under specific deployment
vm_key=$2

description=$vm_key

invalid(){
        echo -e "Usage : $b$0 <deployment key> <VM Type key>$e"
}

go(){
        if [[ -n $dep_key && -n $vm_key ]]; then
                echo -e "=====Going to $b$description$e VM======="
                $script $dep_key $vm_key
        else
                invalid $@
        fi
}

go $@

