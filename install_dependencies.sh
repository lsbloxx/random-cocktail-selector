#!/bin/bash

# download dependencies
if [[ ! -e "bootstrap-3.3.6-dist.zip" ]];
then
    wget https://github.com/twbs/bootstrap/releases/download/v3.3.6/bootstrap-3.3.6-dist.zip
fi

if [[ ! -e "jquery-2.2.0.min.js" ]];
then
    wget http://code.jquery.com/jquery-2.2.0.min.js
fi


# unpack bootstrap
if [[ ! -d "bootstrap-3.3.6-dist" ]];
then
    unzip bootstrap-3.3.6-dist.zip
fi


# remove bootstrap zip file
rm -f bootstrap-3.3.6-dist.zip


printf "that should do it!\n"
