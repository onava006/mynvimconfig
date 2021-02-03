#!/bin/bash

pip install pynvim
npm i -g neovim

# try various methods, in order of preference, to detect distro
# store result in variable '$distro'
if type lsb_release >/dev/null 2>&1 ; then
   distro=$(lsb_release -i -s)
elif [ -e /etc/os-release ] ; then
   distro=$(awk -F= '$1 == "ID" {print $2}' /etc/os-release)
elif [ -e /etc/some-other-release-file ] ; then
   distro=$(ihavenfihowtohandleotherhypotheticalreleasefiles)
fi

# convert to lowercase
distro=$(printf '%s\n' "$distro" | LC_ALL=C tr '[:upper:]' '[:lower:]')

# now do different things depending on distro
case "$distro" in
   debian*)  echo 'soy debian' ;;
   centos*)  echo 'soy centos';;
   ubuntu*)  echo 'soy ubuntu';;
   mint*)    echo 'soy mint';;
   fedora*) 
      echo 'soy fedora'
      sudo dnf install cmake automake libtool 

      ;;
   *)        echo "unknown distro: '$distro'" ; exit 1 ;;
esac

