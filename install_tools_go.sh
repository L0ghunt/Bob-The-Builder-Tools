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
echo 