#!/bin/bash
setfacl -m d:g:Dep_Sistemas_Informacion:rwx Proyectos/
setfacl -m g:Dep_Sistemas_Informacion:rwx Proyectos/
setfacl -m g:Dep_Desarrollo_Software:--x Proyectos/
setfacl -m g:Dep_Explotacion_Software:--x Proyectos/
setfacl -R -m d:o:0 Proyectos/
cd Proyectos/
mkdir -p Pruebas src
setfacl -m d:g:Dep_Desarrollo_Software:rwx src/
setfacl -m g:Dep_Desarrollo_Software:rwx src/
setfacl -m g:Dep_Explotacion_Software:rwx Pruebas/
setfacl -m g:Dep_Explotacion_Software:r-x src/
