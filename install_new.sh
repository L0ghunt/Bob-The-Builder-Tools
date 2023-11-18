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
  echo "12. ALL"
  echo "13. Voltar ao menu principal"
  read option

  case $option in
  1)
    go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
    ;;
  2)
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
    ;;
  3)
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
    ;;
  4)
    go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
    ;;
  5)
    go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest
    ;;
  6)
    go install -v github.com/projectdiscovery/notify/cmd/notify@latest
    ;;
  7)
    go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
    ;;
  8)
    go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
    ;;
  9)
    go install github.com/projectdiscovery/katana/cmd/katana@latest
    ;;
  10)
    go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
    ;;
  11)
    go install github.com/projectdiscovery/alterx/cmd/alterx@latest
    ;;
  12)
    echo "Start intall tools" | lolcat
    echo "Install Nuclei" | lolcat
    go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
    echo "Finished" | lolcat
    echo "Install Subfinder" | lolcat
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
    echo "Finished" | lolcat
    echo "Install Httpx" | lolcat
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
    echo "Finished" | lolcat
    echo "Install Naabu" | lolcat
    go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
    echo "Finished" | lolcat
    echo "Install Interactsh" | lolcat
    go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest
    echo "Finished" | lolcat
    echo "Install Notify" | lolcat
    go install -v github.com/projectdiscovery/notify/cmd/notify@latest
    echo "Finished" | lolcat
    echo "Install Tlsx" | lolcat
    go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
    echo "Fineshed" | lolcat
    echo "Install Uncover" | lolcat
    go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
    echo "Finished" | lolcat
    echo "Install Katana" | lolcat
    go install github.com/projectdiscovery/katana/cmd/katana@latest
    echo "Finished" | lolcat
    echo "Install Dnsx" | lolcat
    go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
    echo "Finished" | lolcat
    echo "Install alterx" | lolcat
    go install github.com/projectdiscovery/alterx/cmd/alterx@latest
    echo "Finished install projectdiscovery tools" | lolcat
    ;;
  13)
   back_to_menu
   ;;
*)
   echo "Opção inválida."
   back_to_menu
   ;;
esac
}

# Função para instalar tools do tomnomnom
function install_tomnomnom(){
  clear
  echo "Escolha uma opção"
  echo "1. anew" 
  echo "2. Assetfinder"
  echo "3. Waybackurls"
  echo "4. Httprobe"
  echo "5. Gf"
  echo "6. Gron"
  echo "7. Qsreplace"
  echo "8. Meg"
  echo "9. FFUF"
  echo "10. fff"
  echo "11. Unfurl"
  echo "12. All"
  echo "13. Voltar ao menu"
  read option

  case $option in
  1)
     go install github.com/tomnomnom/anew@latest
     ;;
  2)
     go install github.com/tomnomnom/assetfinder@latest
     ;;
  3)
     go install github.com/tomnomnom/waybackurls@latest
     ;;
  4)
     go install github.com/tomnomnom/httprobe@latest
     ;;
  5)
     go install github.com/tomnomnom/gf@latest
     ;;
  6)
     go install github.com/tomnomnom/gron@latest
     ;;
  7)
     go install github.com/tomnomnom/qsreplace@latest
     ;;
  8)
     go install github.com/tomnomnom/meg@latest
     ;;
  9)
     go install github.com/ffuf/ffuf@latest
     ;;
  10)
     go install github.com/tomnomnom/fff
     ;;
  11)
     go install github.com/tomnomnom/unfurl@latest
     ;;
  12)
     echo "Install Waybackurls" | lolcat
     go install github.com/tomnomnom/waybackurls@latest
     echo "Finished" | lolcat
     echo "Install Assetfinder" | lolcat
     go install github.com/tomnomnom/assetfinder@latest
     echo "Finished" | lolcat
     echo "Install Httprobe" | lolcat
     go install github.com/tomnomnom/httprobe@latest
     echo "Finished" | lolcat
     echo "install Gf" | lolcat
     go install github.com/tomnomnom/gf@latest
     echo "Finished" | lolcat
     echo "Install Gron" | lolcat
     go install github.com/tomnomnom/gron@latest
     echo "Finished" | lolcat
     echo "Install Qsreplace" | lolcat
     go install github.com/tomnomnom/qsreplace@latest
     echo "Finished" | lolcat
     echo "Install Meg" | lolcat
     go install github.com/tomnomnom/meg@latest
     echo "Finished" | lolcat
     echo "install ffuf" | lolcat
     go install github.com/ffuf/ffuf@latest
     echo "Finished" | lolcat
     echo "Install fff" | lolcat
     go install github.com/tomnomnom/fff
     echo "Finished" | lolcat
     echo "Install Unfurl" | lolcat
     go install github.com/tomnomnom/unfurl@latest
     echo "Finished" | lolcat
     echo "install Anew" | lolcat
     go install github.com/tomnomnom/anew@latest
     echo "Finished Install Tomnomnom tools" | lolcat
     ;;
13)
   back_to_menu
   ;;
*)
   echo "Opção inválida."
   back_to_menu
   ;;
esac
}

# Função para instalar tools do Hakluke
function install_Hakluke() {
  clear
  echo "Escolha uma opção:"
  echo "1. Hakrawler"
  echo "2. Hakredns"
  echo "3. Haktldextract"
  echo "4. Haklistgen"
  read option

  case $option in 
  1)
    go install github.com/hakluke/hakrawler@latest
    ;;
  2)
    go install github.com/hakluke/hakrevdns@latest
    ;;
  3)
    go install github.com/hakluke/haktldextract@latest
    ;;
  4)
    go install github.com/hakluke/haklistgen@latest
    ;;
  5)
    back_to_menu
    ;;
  *)
    echo "Opção inválida."
    back_to_menu
    ;;
  esac
}
# Função para instalar outras tools
function install_addtools() {
  clear
  echo "Escolha uma opção:"
  echo "1. Dalfox"
  echo "2. Dirsearch"
  echo "3. Airxss"
  echo "4. Cf-Check"
  echo "5. Freq"
  echo "6. Gau"
  echo "7. Gospider"
  echo "8. Gowitness"
  echo "9. Goop"
  echo "10. GetJS"
  echo "11. jaeles"
  echo "12. jsubfinder"
  echo "13. kxss"
  echo "14. Metabigor"
  echo "15. Rush"
  echo "16. SubJS"
  echo "17. unew"
  echo "18. SubJSt"
  echo "19. Amass"
  echo "20. All"
  echo "21. voltar ao menu"
  read option

  case $option in
   1)
     go install github.com/hahwul/dalfox/v2@latest
     ;;
   2)
     go install github.com/maurosoria/dirsearch@latest
     ;;
   3)
     go install github.com/ferreiraklet/airixss@latest
     ;;
   4)
     go install github.com/dwisiswant0/cf-check@latest
     ;;
   5)
     go install github.com/takshal/freq@latest
     ;;
   6)
     go install github.com/lc/gau/v2/cmd/gau@latest
     ;;
   7)
     go install github.com/jaeles-project/gospider@latest
     ;;
   8)
     go install github.com/sensepost/gowitness@latest
     ;;
   9)
     go install github.com/deletescape/goop@latest
     ;;
   10)
     go install github.com/003random/getJS@latest
     ;;
   11)
     go install github.com/jaeles-project/jaeles@latest
     ;;
   12)
     go install github.com/ThreatUnkown/jsubfinder@latest
     ;;
   13)
     go install github.com/Emoe/kxss@latest
     ;;
   14)
     go install github.com/j3ssie/metabigor@latest
     ;;
   15)
     go install github.com/shenwei356/rush@latest
     ;;
   16)
     go install github.com/lc/subjs@latest
     ;;
   17)
     go install github.com/dwisiswant0/unew@latest
     ;;
   18)
     go install github.com/lc/subjst@latest
     ;;
   19)
     go install -v github.com/owasp-amass/amass/v4/...@master
     ;;
   20)
     echo "Install Dalfox"
     go install github.com/hahwul/dalfox/v2@latest
     echo "Finished"
     echo "Finished install Hahwul tools"
     echo "Install Dirsearch"
     go install github.com/maurosoria/dirsearch@latest
     echo "Finished"
     echo "install Airixss"
     go install github.com/ferreiraklet/airixss@latest
     echo "Finished"
     echo "Install cf-check"
     go install github.com/dwisiswant0/cf-check@latest
     echo "Finished"
     echo "Install Freq"
     go install github.com/takshal/freq@latest
     echo "Finished"
     echo "Install gau"
     go install github.com/lc/gau/v2/cmd/gau@latest
     echo "Finished"
     echo "Install Gospider"
     go install github.com/jaeles-project/gospider@latest
     echo "Finished"
     echo "Install Gowitness"
     go install github.com/sensepost/gowitness@latest
     echo "Finished"
     echo "Install Goop"
     go install github.com/deletescape/goop@latest
     echo "Finished"
     echo "Install Getjs"
     go install github.com/003random/getJS@latest
     echo "Finished"
     echo "Install Jaeles"
     go install github.com/jaeles-project/jaeles@latest
     echo "Finished"
     echo "Install Jsubfinder"
     go install github.com/ThreatUnkown/jsubfinder@latest
     echo "Finished"
     echo "Install Kxss"
     go install github.com/Emoe/kxss@latest
     echo "Finished"
     echo "Install Metabigor"
     go install github.com/j3ssie/metabigor@latest
     echo "Finished"
     echo "Install Ruhs"
     go install github.com/shenwei356/rush@latest
     echo "Finished"
     echo "Install Subjs"
     go install github.com/lc/subjs@latest
     echo "Finished"
     echo "Install Unew"
     go install github.com/dwisiswant0/unew@latest
     echo "Finished"
     echo "Install Subjst"
     go install github.com/lc/subjst@latest
     echo "Finished"
     echo "Install Amass"
     go install -v github.com/owasp-amass/amass/v4/...@master
     echo "Finished"
     ;;
   21)
     back_to_menu
     ;;
   *)
     echo "Opção inválida."
     back_to_menu
     ;;
  esac

}
# Função para voltar ao menu
function back_to_menu() {
 clear
 echo "Escolha uma opção:"
 echo "1. Instalar Golang"
 echo "2. Tools by Projectdiscovery"
 echo "3. Tools by Tomnomnom"
 echo "4. Tools by Hakluke"
 echo "5. Tools diversas"
 echo "6. ALL"
 echo "7. Sair"
 echo "0. Menu"
 read option

 case $option in
   1)
     install_golang
     ;;
   2)
     install_projectdiscovery
     ;;
   3)
     install_tomnomnom
     ;;
   4)
     install_Hakluke
     ;;
   5)
     install_addtools
     ;;
   6)
     echo "Start intall tools"
     echo "Install Nuclei"
     go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
     echo "Finished"
     echo "Install Subfinder"
     go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
     echo "Finished"
     echo "Install Httpx"
     go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
     echo "Finished"
     echo "Install Naabu"
     go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
     echo "Finished"
     echo "Install Interactsh"
     go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest
     echo "Finished"
     echo "Install Notify"
     go install -v github.com/projectdiscovery/notify/cmd/notify@latest
     echo "Finished"
     echo "Install Tlsx"
     go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
     echo "Fineshed"
     echo "Install Uncover"
     go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
     echo "Finished"
     echo "Install Katana"
     go install github.com/projectdiscovery/katana/cmd/katana@latest
     echo "Finished"
     echo "Install Dnsx"
     go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
     echo "Finished"
     echo "Install alterx"
     go install github.com/projectdiscovery/alterx/cmd/alterx@latest
     echo "Finished install projectdiscovery tools" 
     echo "Install Waybackurls"
     go install github.com/tomnomnom/waybackurls@latest
     echo "Finished"
     echo "Install Assetfinder"
     go install github.com/tomnomnom/assetfinder@latest
     echo "Finished"
     echo "Install Httprobe"
     go install github.com/tomnomnom/httprobe@latest
     echo "Finished"
     echo "install Gf"
     go install github.com/tomnomnom/gf@latest
     echo "Finished"
     echo "Install Gron"
     go install github.com/tomnomnom/gron@latest
     echo "Finished"
     echo "Install Qsreplace"
     go install github.com/tomnomnom/qsreplace@latest
     echo "Finished"
     echo "Install Meg"
     go install github.com/tomnomnom/meg@latest
     echo "Finished"
     echo "install ffuf"
     go install github.com/ffuf/ffuf@latest
     echo "Finished"
     echo "Install fff"
     go install github.com/tomnomnom/fff
     echo "Finished"
     echo "Install Unfurl"
     go install github.com/tomnomnom/unfurl@latest
     echo "Finished"
     echo "install Anew"
     go install github.com/tomnomnom/anew@latest
     echo "Finished"
     echo "Finished Install Tomnomnom tools" | lolcat
     echo "Install Hakrawler"
     go install github.com/hakluke/hakrawler@latest
     echo "Finished"
     echo "Install Hakrevdns"
     go install github.com/hakluke/hakrevdns@latest
     echo "Finished"
     echo "Install Haktldextract"
     go install github.com/hakluke/haktldextract@latest
     echo "Finished"
     echo "Install Haklistgen"
     go install github.com/hakluke/haklistgen@latest
     echo "Finished"
     echo "Finished Install Hakluke tools" | lolcat
     echo "Install Dalfox"
     go install github.com/hahwul/dalfox/v2@latest
     echo "Finished"
     echo "Finished install Hahwul tools"
     echo "Install Dirsearch"
     go install github.com/maurosoria/dirsearch@latest
     echo "Finished"
     echo "install Airixss"
     go install github.com/ferreiraklet/airixss@latest
     echo "Finished"
     echo "Install cf-check"
     go install github.com/dwisiswant0/cf-check@latest
     echo "Finished"
     echo "Install Freq"
     go install github.com/takshal/freq@latest
     echo "Finished"
     echo "Install gau"
     go install github.com/lc/gau/v2/cmd/gau@latest
     echo "Finished"
     echo "Install Gospider"
     go install github.com/jaeles-project/gospider@latest
     echo "Finished"
     echo "Install Gowitness"
     go install github.com/sensepost/gowitness@latest
     echo "Finished"
     echo "Install Goop"
     go install github.com/deletescape/goop@latest
     echo "Finished"
     echo "Install Getjs"
     go install github.com/003random/getJS@latest
     echo "Finished"
     echo "Install Jaeles"
     go install github.com/jaeles-project/jaeles@latest
     echo "Finished"
     echo "Install Jsubfinder"
     go install github.com/ThreatUnkown/jsubfinder@latest
     echo "Finished"
     echo "Install Kxss"
     go install github.com/Emoe/kxss@latest
     echo "Finished"
     echo "Install Metabigor"
     go install github.com/j3ssie/metabigor@latest
     echo "Finished"
     echo "Install Ruhs"
     go install github.com/shenwei356/rush@latest
     echo "Finished"
     echo "Install Subjs"
     go install github.com/lc/subjs@latest
     echo "Finished"
     echo "Install Unew"
     go install github.com/dwisiswant0/unew@latest
     echo "Finished"
     echo "Install Subjst"
     go install github.com/lc/subjst@latest
     echo "Finished"
     echo "Install Amass"
     go install -v github.com/owasp-amass/amass/v4/...@master
     echo "Finished"
     ;;
   7)
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
 echo "2. Tools by Projectdiscovery"
 echo "3. Tools by Tomnomnom"
 echo "4. Tools by Hakluke"
 echo "5. Tools diversas"
 echo "6. ALL"
 echo "7. Sair"
 echo "0. Menu"
 read option

 case $option in
   1)
     install_golang
     ;;
   2)
     install_projectdiscovery
     ;;
   3)
     install_tomnomnom
     ;;
   4)
     install_Hakluke
     ;;
   5)
     install_addtools
     ;;
   6)
     echo "Start intall tools"
     echo "Install Nuclei"
     go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
     echo "Finished"
     echo "Install Subfinder"
     go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
     echo "Finished"
     echo "Install Httpx"
     go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
     echo "Finished"
     echo "Install Naabu"
     go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
     echo "Finished"
     echo "Install Interactsh"
     go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest
     echo "Finished"
     echo "Install Notify"
     go install -v github.com/projectdiscovery/notify/cmd/notify@latest
     echo "Finished"
     echo "Install Tlsx"
     go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
     echo "Fineshed"
     echo "Install Uncover"
     go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
     echo "Finished"
     echo "Install Katana"
     go install github.com/projectdiscovery/katana/cmd/katana@latest
     echo "Finished"
     echo "Install Dnsx"
     go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
     echo "Finished"
     echo "Install alterx"
     go install github.com/projectdiscovery/alterx/cmd/alterx@latest
     echo "Finished install projectdiscovery tools" 
     echo "Install Waybackurls"
     go install github.com/tomnomnom/waybackurls@latest
     echo "Finished"
     echo "Install Assetfinder"
     go install github.com/tomnomnom/assetfinder@latest
     echo "Finished"
     echo "Install Httprobe"
     go install github.com/tomnomnom/httprobe@latest
     echo "Finished"
     echo "install Gf"
     go install github.com/tomnomnom/gf@latest
     echo "Finished"
     echo "Install Gron"
     go install github.com/tomnomnom/gron@latest
     echo "Finished"
     echo "Install Qsreplace"
     go install github.com/tomnomnom/qsreplace@latest
     echo "Finished"
     echo "Install Meg"
     go install github.com/tomnomnom/meg@latest
     echo "Finished"
     echo "install ffuf"
     go install github.com/ffuf/ffuf@latest
     echo "Finished"
     echo "Install fff"
     go install github.com/tomnomnom/fff
     echo "Finished"
     echo "Install Unfurl"
     go install github.com/tomnomnom/unfurl@latest
     echo "Finished"
     echo "install Anew"
     go install github.com/tomnomnom/anew@latest
     echo "Finished"
     echo "Finished Install Tomnomnom tools" | lolcat
     echo "Install Hakrawler"
     go install github.com/hakluke/hakrawler@latest
     echo "Finished"
     echo "Install Hakrevdns"
     go install github.com/hakluke/hakrevdns@latest
     echo "Finished"
     echo "Install Haktldextract"
     go install github.com/hakluke/haktldextract@latest
     echo "Finished"
     echo "Install Haklistgen"
     go install github.com/hakluke/haklistgen@latest
     echo "Finished"
     echo "Finished Install Hakluke tools" | lolcat
     echo "Install Dalfox"
     go install github.com/hahwul/dalfox/v2@latest
     echo "Finished"
     echo "Finished install Hahwul tools"
     echo "Install Dirsearch"
     go install github.com/maurosoria/dirsearch@latest
     echo "Finished"
     echo "install Airixss"
     go install github.com/ferreiraklet/airixss@latest
     echo "Finished"
     echo "Install cf-check"
     go install github.com/dwisiswant0/cf-check@latest
     echo "Finished"
     echo "Install Freq"
     go install github.com/takshal/freq@latest
     echo "Finished"
     echo "Install gau"
     go install github.com/lc/gau/v2/cmd/gau@latest
     echo "Finished"
     echo "Install Gospider"
     go install github.com/jaeles-project/gospider@latest
     echo "Finished"
     echo "Install Gowitness"
     go install github.com/sensepost/gowitness@latest
     echo "Finished"
     echo "Install Goop"
     go install github.com/deletescape/goop@latest
     echo "Finished"
     echo "Install Getjs"
     go install github.com/003random/getJS@latest
     echo "Finished"
     echo "Install Jaeles"
     go install github.com/jaeles-project/jaeles@latest
     echo "Finished"
     echo "Install Jsubfinder"
     go install github.com/ThreatUnkown/jsubfinder@latest
     echo "Finished"
     echo "Install Kxss"
     go install github.com/Emoe/kxss@latest
     echo "Finished"
     echo "Install Metabigor"
     go install github.com/j3ssie/metabigor@latest
     echo "Finished"
     echo "Install Ruhs"
     go install github.com/shenwei356/rush@latest
     echo "Finished"
     echo "Install Subjs"
     go install github.com/lc/subjs@latest
     echo "Finished"
     echo "Install Unew"
     go install github.com/dwisiswant0/unew@latest
     echo "Finished"
     echo "Install Subjst"
     go install github.com/lc/subjst@latest
     echo "Finished"
     echo "Install Amass"
     go install -v github.com/owasp-amass/amass/v4/...@master
     echo "Finished"
     ;;
   7)
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