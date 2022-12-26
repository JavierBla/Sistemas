#!/bin/bash

while IFS=, read -r nombre Descripcion
do
  groupadd $nombre
done < Grupos.csv
