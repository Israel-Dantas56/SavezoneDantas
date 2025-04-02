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

#excluindo o script dantas-ubuntu.sh
rm -f dantas-ubuntu.sh

#Criando a pasta TEMP 
pasta_temp="/temp"
if [[ ! -d $pasta_temp ]]; then
    mkdir "$pasta_temp"
fi

#Criando link simbolico da pasta do usuario
usuario=$(pwd)
ln -sf $usuario $pasta_temp/usuario

#Criando link simbolico da pasta /.mozilla
mozilla=$usuario/.mozilla
if [[ -d $mozilla ]]; then
    ln -sf "$mozilla" "$pasta_temp/mozilla"
else
    echo "Diretorio .mozilla nao encontrado. Link simbolico nao criado."
fi

cd "$pasta_temp" || { echo "Nao foi possivel mudar para o diretorio $pasta_temp."; exit 1; }

#Download do script de atualização
sudo wget -c https://github.com/Israel-Dantas56/SavezoneDantas/script/menu.sh && sudo chmod +x menu.sh && sudo bash menu.sh




