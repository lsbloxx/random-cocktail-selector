#!/bin/bash


# set framework URLs
filename_jquery="jquery-3.1.0.min.js"
filename_bootstrap="v4.0.0-alpha.4.zip"
dirname_bootstrap="bootstrap-4.0.0-alpha.4"
url_jquery="https://code.jquery.com/${filename_jquery}"
url_bootstrap="https://github.com/twbs/bootstrap/archive/${filename_bootstrap}"


# create new directory for frameworks
mkdir -p "assets"
cd ./assets/


# download framework if needed
[[ ! -e ${filename_jquery}   ]] && curl    -O "${url_jquery}"
[[ ! -d ${dirname_bootstrap} ]] && curl -L -O "${url_bootstrap}" && unzip "${filename_bootstrap}" && rm "${filename_bootstrap}"

