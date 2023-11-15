#!/bin/bash

# Função para instalar o Golang
function install_golang() {
 echo "Download golang start"
 wget https://go.dev/dl/go1.20.4.linux-amd64.tar.gz
 echo "Download golang Fineshed"
 echo "Start descompact"
 rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz
 echo "Fineshed descompact"
 echo "Movendo binarios"
 mv /usr/local/go/bin/* /usr/bin
 echo "Binarios movidos"
 echo "Verificando instalação"
 go version
 echo "Verificação concluida"
 echo "Finished install golang"
}

# Função pra instalar tools projectdiscovery
function install_projectdiscovery(){
 clear
 echo "Escolha uma opção:"
 echo "1. Nuclei"
 echo "2. Subfinder"
 echo "3. httpx"
 echo "4. naabu"
 echo "5. Interactsh"
 echo "6. Notify"
 echo "7. Tlsx"
 echo "8. Uncover"
 echo "9. Katana"
 echo "10. Dnsx"
 echo "11. alterx"
 echo "12. Voltar ao menu principal"
 read escolhas
 
 if [[ $escolhas == *"1"* ]]; then
  go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
 fi

 



}

# Função para voltar ao menu
function back_to_menu() {
 clear
 echo "Escolha uma opção:"
 echo "1. Instalar Golang"
 echo "2. Sair"
 echo "0. Menu"
 read option

 case $option in
   1)
     install_golang
     ;;
   2)
     exit 0
     ;;
   0)
     back_to_menu
     ;;
   *)
     echo "Opção inválida."
     back_to_menu
     ;;
 esac
}

# Menu principal
while true; do
clear
 echo "Escolha uma opção:"
 echo "1. Instalar Golang"
 echo "2. Tools by projectdiscovery"
 echo "2. Sair"
 echo "0. Menu"
 read option

 case $option in
   1)
     install_golang
     ;;
   2)
     install_projectdiscovery
     ;;
   !)
     exit 0
     ;;
   0)
     back_to_menu
     ;;
   *)
     echo "Opção inválida."
     back_to_menu
     ;;
 esac
done