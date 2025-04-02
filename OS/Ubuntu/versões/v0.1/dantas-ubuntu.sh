#! /bin/bash
#################################################################
# sistema - Script para Instalação de programas do Ubuntu       #
# Autor: ISRAEL DANTAS                                          #
# Data: 02/04/2025                                              #
# Atualizado: 02/04/2025  autor: ISRAEL DANATS                  #
#################################################################

clear

###### Verifica se esta executando em ROOT###### 
if [[ $EUID -ne 0 ]]; then

	whiptail --title "ERRO" --msgbox "Este script deve ser executado como root. 
		Cancelando a instalacao. Clique em OK para continuar." 8 78
	exit 1
fi


sleep 0.2
clear
echo "";
echo "XXXXX  XXXXXX   XXXXX   XXXXX         XXXXX    XXX     XXXX    XXXXX  X    X";
echo "X      X    X   X       X   X         X       X   X    X   X   X       X  X";
echo "XXXXX  XXXXXX   XXXXX   XXXXX  XXXXX  X      X     X   X    X  XXXX     XX";
echo "    X  X    X   X       X   X         X       X   X    X   X   X       X  X";
echo "XXXXX  X    X   X       X   X         XXXXX    XXX     XXXX    XXXXX  X    X";
echo "";
echo "Aguarde..";
sleep 3

#Criando a pasta TEMP 
pasta_temp="/temp"
if [[ ! -d $pasta_temp ]]; then
    mkdir "$pasta_temp"
fi

#Download do script de atualização
sudo wget -c https://github.com/Israel-Dantas56/SavezoneDantas/script/menu.sh && sudo chmod +x menu.sh && sudo bash menu.sh




