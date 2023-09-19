echo "Start install golang 1.20.4"
wget https://go.dev/dl/go1.20.4.linux-amd64.tar.gz
echo "Finished install golang"
echo "Start descompact"
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz
echo "Fineshed descompact"
echo "Movendo binarios"
mv /usr/local/go/bin/* /usr/bin
echo "Binarios movidos"
echo "Verificando instalação"
go version
echo "Verificação concluida"
