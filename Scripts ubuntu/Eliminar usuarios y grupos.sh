#!/bin/bash

while IFS=, read -r cuenta password nombreapellidos grupo
do
  sudo userdel -r "$cuenta"
done < Usuarios.csv

while IFS=, read -r nombre Descripcion
do
  sudo groupdel "$nombre"
done < Grupos.csv
