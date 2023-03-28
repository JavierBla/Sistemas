DIR_DESTINO="/mnt/nas/webcams/benicassim/$(date +"%-m")/$(date +"%-d")"

wget -P "${DIR_DESTINO}" https://www.avametnuvol.es/estacions/c05m028e04/webcamNO.jpg
mv "${DIR_DESTINO}"/webcamNO.jpg "${DIR_DESTINO}"/"Benicassim $(date +%H%M).jpg"
