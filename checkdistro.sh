#!/bin/bash
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
   debian*)  echo 'soy debian pero aun no me configuran' ;;
   centos*)  echo 'soy centos pero aun no me configuran';;
   ubuntu*)  echo 'soy ubuntu pero aun no me configuran';;
   fedora*) 
      echo 'soy fedora y la configuracion esta incompleta, pero algo es algo'
      sudo dnf install -y cmake automake libtool gcc
      pip install pynvim
      npm i -g neovim
      ;;
   *)        echo "unknown distro: '$distro'" ; exit 1 ;;
esac

