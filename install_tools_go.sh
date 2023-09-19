echo "Start install golang 1.20.4"
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
#tools
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