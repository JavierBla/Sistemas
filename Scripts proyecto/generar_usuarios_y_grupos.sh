#!bin/bash
groupadd 1ESO
groupadd 2ESO
groupadd 3ESO
groupadd 4ESO
groupadd 1BACH
groupadd 2BACH
groupadd DAM

groupadd Publico_rwx
groupadd Publico_rx
groupadd ESO_rx
groupadd BACH_rx

groupadd 1ESO_rwx
groupadd 2ESO_rwx
groupadd 3ESO_rwx
groupadd 4ESO_rwx
groupadd 1BACH_rwx
groupadd 2BACH_rwx
groupadd DAM_rwx

useradd -m -s /bin/bash -G 1ESO usu_1ESO
useradd -m -s /bin/bash -G 2ESO usu_2ESO
useradd -m -s /bin/bash -G 3ESO usu_3ESO
useradd -m -s /bin/bash -G 4ESO usu_4ESO
useradd -m -s /bin/bash -G 1BACH usu_1BACH
useradd -m -s /bin/bash -G 2BACH usu_2BACH
useradd -m -s /bin/bash -G DAM usu_DAM
useradd -m -s /bin/bash alumnado
useradd -m -s /bin/bash profesorado

passwd usu_1ESO 
passwd usu_2ESO 
passwd usu_3ESO 
passwd usu_4ESO
passwd usu_1BACH
passwd usu_2BACH
passwd usu_DAM
passwd alumnado
passwd profesorado
