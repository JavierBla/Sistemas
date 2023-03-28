#!/bin/bash
DIR_DESTINO="/mnt/nas/frentes/$(date +"%Y")/$(date +"%-m")/$(date +"%-d")"


wget -P "${DIR_DESTINO}" https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/$(date +%Y%m%d)00+000_ww_gpx0a000.gif

wget -P "${DIR_DESTINO}" https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/$(date +%Y%m%d)12+000_ww_gpx0a200.gif

wget -P "${DIR_DESTINO}" https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/$(date -d "yesterday" +%Y%m%d)12+036_ww_g1x0a2c1.gif

wget -P "${DIR_DESTINO}" https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/$(date -d "yesterday" +%Y%m%d)12+048_ww_g1x0a2d2.gif

wget -P "${DIR_DESTINO}" https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/$(date -d "yesterday" +%Y%m%d)12+060_ww_g1x0a2c2.gif

wget -P "${DIR_DESTINO}" https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/$(date -d "yesterday" +%Y%m%d)12+072_ww_g1x0a2d3.gif
