#!/bin/bash

usage='[usage] ./deploy.sh (personal|academic) [--serve]'
personal_dest=./personal
academic_dest=./academic

if [[ $# -gt 2 ]];
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

if [[ $# -eq 2 ]];
then
    jekyll serve
fi
