#!bin/bash
sudo mkdir /Publico
sudo chown administrador:administrador /Publico

setfacl -m d:g:Publico_rwx:rwx /Publico
setfacl -m g:Publico_rwx:rwx /Publico
setfacl -m d:other:0 /Publico
setfacl -m other:0 /Publico
setfacl -m g:Publico_rx:rx /Publico

cd /Publico/
mkdir -p 1ESO 2ESO 3ESO 4ESO 1BACH 2BACH DAM

setfacl -m d:g:1ESO_rwx:rwx /Publico/1ESO/
setfacl -m g:1ESO_rwx:rwx /Publico/1ESO/
setfacl -m d:g:ESO_rx:rx /Publico/1ESO/
setfacl -m g:ESO_rx:rx /Publico/1ESO/

setfacl -m d:g:2ESO_rwx:rwx /Publico/2ESO/
setfacl -m g:2ESO_rwx:rwx /Publico/2ESO/
setfacl -m d:g:ESO_rx:rx /Publico/2ESO/
setfacl -m g:ESO_rx:rx /Publico/2ESO/

setfacl -m d:g:3ESO_rwx:rwx /Publico/3ESO/
setfacl -m g:3ESO_rwx:rwx /Publico/3ESO/
setfacl -m d:g:ESO_rx:rx /Publico/3ESO/
setfacl -m g:ESO_rx:rx /Publico/3ESO/

setfacl -m d:g:4ESO_rwx:rwx /Publico/4ESO/
setfacl -m g:4ESO_rwx:rwx /Publico/4ESO/
setfacl -m d:g:ESO_rx:rx /Publico/4ESO/
setfacl -m g:ESO_rx:rx /Publico/4ESO/

setfacl -m d:g:1BACH_rwx:rwx /Publico/1BACH/
setfacl -m g:1BACH_rwx:rwx /Publico/1BACH/
setfacl -m d:g:BACH_rx:rx /Publico/1BACH/
setfacl -m g:BACH_rx:rx /Publico/1BACH/

setfacl -m d:g:2BACH_rwx:rwx /Publico/2BACH/
setfacl -m g:2BACH_rwx:rwx /Publico/2BACH/
setfacl -m d:g:BACH_rx:rx /Publico/2BACH/
setfacl -m g:BACH_rx:rx /Publico/2BACH/

setfacl -m d:g:DAM_rwx:rwx /Publico/DAM/
setfacl -m g:DAM_rwx:rwx /Publico/DAM/
