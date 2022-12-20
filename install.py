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

    def download_go(self):
        print('[+] Golang Download Start... [+]')
        command_download_go = 'wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz'
        popen(command_download_go).read()
        command_install = 'rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz'
        popen(command_install).read()
        command_move_go_1 = 'cd /usr/local/go/bin'
        popen(command_move_go_1).read()
        command_move_go_2 = 'mv go gofmt /usr/bin'
        popen(command_move_go_2)
        command_go_version = 'go version'
        popen(command_go_version).read()
        print('[+] Golang Download finished... [+]')

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
user_start_input = str(input("Digite Start para começar"))
install_to_install = Install(user_start_input)
install_to_install.validate_root()
install_to_install.download_go()
