#!/bin/bash

#################################
#PROGRAMA PRINCIPAL
################################


#Menu principal
#Cada vez que se selecciona una opción, ejecuta su código y se pone a la
#espera que pulsemos una tecla para volver al menú principal

while [ opcion != "" ]
do
	clear
	echo "****************************"
	echo "**********MENU**************"
	echo "****************************"
	echo

  echo "1)" "Generar usuarios y grupos"
  echo "2)" "Generar estructura de directorios"
  echo "3)" "Eliminar usuairos y grupos"
  echo "4)" "Eliminar estructura de directorios"
  echo "5)" "Ayuda"
  echo "6)" "Salir"

	read -p "Introduce una opcion: " opcion
	#Comprueba si el valor recogido en opcion es 1,2 o 3, si es otra cosa, se ejecuta *)
   case $opcion in
    	1) 
			  sudo sh generar_usuarios_y_grupos.sh
			  sudo sh agregar_usuarios_a_grupos.sh
			  read -p "Press [Enter] key to continue..."
       	;;
    	2) 
        		  sh estructura_acl.sh
			  read -p "Press [Enter] key to continue..."
        ;;
    	3) 
        		  sudo sh eliminar_usuarios_y_grupos.sh
			  read -p "Press [Enter] key to continue..."
        
        ;;
        4) 
        		  sudo rm -r /Publico/
			  read -p "Press [Enter] key to continue..."
        
        ;;
       	5) 
			  xdg-open "Ayuda.txt"
			  read -p "Press [Enter] key to continue..."
        
        ;;
        6) 
        		  echo "Saliendo......"
        		  exit 1
        
        ;;
    	*) 
			  echo "Error: Please try again (select 1..2)!"
        read -p "Press [Enter] key to continue..."
		    ;;
   esac
 done
