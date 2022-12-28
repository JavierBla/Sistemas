#!/bin/bash

while IFS=, read -r nombre Descripcion
do
  sudo groupadd "$nombre"
done < Grupos.csv
