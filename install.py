from copyreg import remove_extension
from os import *
from os import geteuid

#validate root
class Install(object):
    def __init__(self, start):
        self.start = start
        
    def validate_root(self):
        if not geteuid() == 0:
            print("-] Please run this script as root... [-]")
            exit()
        else:
            pass
#Download and Install Golang
    def Download_go(self):
        command_download_go = 'wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz'
        print('[+] Golang Download Start... [+]')
        print(popen(command_download_go).read())
        print('[+] Golang Download Finished... [+]')

             
    def Remover_go(self):
        command_remover_go = 'rm -rf /usr/local/go'
        print('[+] Removendo Diretorio go... [+]')
        print(popen(command_remover_go).read())
        print('[+] Golang removido com sucesso...[+]')

    def Extrair_go(sefl):
        command_Extrair = 'tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz'
        print('[+] ... [+]')
        print(popen(command_extrair).read())
        print('[+] Golang Install Finished...[+]')
    
    def entrar_na_pasta_go(self):
        command_download_go_and_install = 'cd /usr/local/go/bin'
        print('[+] Golang Install Start... [+]')
        print(popen(command_download_go_and_install).read())
        print('[+] Golang Install Finished...[+]')
    
    def mover_go(self):
        command_download_go_and_install = 'mv go gofmt /usr/bin'
        print('[+] Golang Install Start... [+]')
        print(popen(command_download_go_and_install).read())
        print('[+] Golang Install Finished...[+]')

    def voltar_na_pasta_root(self):
        command_download_go_and_install = 'cd /root'
        print('[+] Golang Install Start... [+]')
        print(popen(command_download_go_and_install).read())
        print('[+] Golang Install Finished...[+]')



        
#dowload go tools via go install
# def dowload_amass():
#     print('[+] Amass Download Start... [+]')
#     command_download = 'go install -v github.com/OWASP/Amass/v3/...@master'
#     print('[+] Amass Download Finished... [+]')

# def dowload_anew():
#     print('[+] Anew Download Start... [+]')
#     command_download = 'go install -v github.com/tomnomnom/anew@latest'
#     print('[+] Anew Download Finished... [+]')

# def dowload_airixss():
#     print('[+] Airixss Download Start... [+]')
#     command_download = 'go install github.com/ferreiraklet/airixss@latest'
#     print('[+] Airixss Download Finished... [+]')

# def dowload_cfchek():
#     print('[+] Cfchek Download Start... [+]')
#     command_download = '$ go install github.com/dwisiswant0/cf-check@latest'
#     print('[+] Cfchek Download Finished... [+]')

# def dowload_chaos():
#     print('[+] Chaos Download start... [+]')
#     command_download = 'go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest'
#     print('[+] Chaos Download Finished... [+]')

# def dowload_cariddi():
#     print('[+] Cariddi Download Start... [+]')
#     command_download = 'go install -v github.com/edoardottt/cariddi/cmd/cariddi@latest'
#     print('[+] Cariddi Download Finished... [+]')

# def dowload_dalfox():
#     print('[+] Dalfox Download Start... [+]')
#     command_download = 'go install github.com/hahwul/dalfox/v2@latest'
#     print('[+] Dalfox Download Finished... [+]')
user_start_input = str(input("Digite Start para Iniciar as Instalações: "))
install_to_install = Install(user_start_input)
install_to_install.validate_root()
install_to_install.download_go()
