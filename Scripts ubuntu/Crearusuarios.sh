#!/bin/bash

while IFS=, read -r cuenta password nombreapellidos grupo
do
  sudo useradd -m -l "$cuenta" -p $(openssl passwd -1 "$password") -c "$nombreapellidos"
done < Usuarios.csv
