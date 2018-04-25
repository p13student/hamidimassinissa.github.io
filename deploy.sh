#!/bin/bash

usage='[usage] ./deploy.sh (personal|academic)'
personal_dest=./personal
academic_dest=./academic

if [[ $# -ne 1 ]];
then
    echo $usage
    exit -1
fi

case $1 in
    personal)
        jekyll build --destination $personal_dest
        ;;

    academic)
        jekyll build --destination $academic_dest
        ;;

    *)
        echo $usage
        exit -1
        ;;
esac
