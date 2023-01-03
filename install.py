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
        print('[+] Golang Download Iniciado... [+]')
        print(popen(command_download_go).read())
        print('[+] Download feito com Sucesso... [+]')

             
    def Remover_go(self):
        command_remover_go = 'rm -rf /usr/local/go'
        print('[+] Removendo Diretorio go... [+]')
        print(popen(command_remover_go).read())
        print('[+] Diretorio removido com Sucesso...[+]')

    def Extrair_go(sefl):
        command_extrair = 'tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz'
        print('[+] Extraindo Golang... [+]')
        print(popen(command_extrair).read())
        print('[+] Golang extraido com Sucesso...[+]')
    
    def Mover_go(self):
        command_movendo_go = 'mv /usr/local/go/bin/go /usr/bin'
        print('[+] Movendo Golang... [+]')
        print(popen(command_movendo_go).read())
        print('[+] Movido com Sucesso...[+]')

    def Mover_gofmt(self):
        command_movendo_go = 'mv /usr/local/go/bin/gofmt /usr/bin'
        print('[+] Movendo Golang... [+]')
        print(popen(command_movendo_go).read())
        print('[+] Movido com Sucesso...[+]')

    def Vericar_go(self):
        command_verificar = 'go version'
        print('[+] Verificando Golang... [+]')
        print(popen(command_verificar).read())
        print('[+] Instalado com Sucesso...[+]')




        
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

print("""  ____                            _            __  __""")
print(""" | __ )    ___    _   _   _ __   | |_   _   _  \ \/ /""")
print(""" |  _ \   / _ \  | | | | | '_ \  | __| | | | |  \  / """)
print(""" | |_) | | (_) | | |_| | | | | | | |_  | |_| |  /  \ """)
print(""" |____/   \___/   \__,_| |_| |_|  \__|  \__, | /_/\_\ """)
print("""                                        |___/   """)
print("           Intalll                               ")

user_start_input = str(input("Digite Start para Iniciar as Instalações: "))
install_to_install = Install(user_start_input)
install_to_install.validate_root()
install_to_install.Download_go()
install_to_install.Remover_go()
install_to_install.Extrair_go()
install_to_install.Mover_go()
install_to_install.Mover_gofmt()
install_to_install.Vericar_go


