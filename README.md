# mynvimconfig
Este script esta hecho para que mi yo del futuro se ahorre una molestia cuando resintale un sistema :)
I'm configuring my nvim sessions 

El script de instalacion esta incompleto, porque no me acuerdo de todos los pasos para tener configurado neovim.

Actualmente, el script solo tiene la configuracion para ser ejecutado en un Fedora, pero tiene la posibilidad de ser extendida. Si vuelvo a Debian 

# Installation 

ejecutar sin sudo, ya que se instalaran dependencias por pip, y estas no deben tener permisos de administrador, por lo que la contrasena solo se ingresa cuando es requerido

```
chmod a+x neoviminstall.sh
chmod a+x checkdistro.sh

./neoviminstall.sh
```

# Post Installation
luego de la instalacion, abrir neovim y ejecutar 

```
nvim
:PlugStatus
:PlugInstall
:checkhealth
```



