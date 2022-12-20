from os import *
from os import geteuid


class B0untyX(object):
    def __init__(self, domain):
        self.domain = domain

    def validate_run_as_root(self):
        if not geteuid() == 0:
            print("-] Please run this script as root... [-]")
            exit()
        else:
            pass

    def domain_to_url(self):
        domain_to_ulr_command = 'subfinder -d '+self.domain+' -o result_domain_'+self.domain+'.txt | httpx -l result_domain'+self.domain+'.txt -silent > result_httpx'+self.domain+'.txt'
        print("[*] domain to url execute process starting... [*]")
        popen(domain_to_ulr_command).read()
        print('[+] domain to url finished... [+]')

    
    

print("""  ____                            _            __  __""")
print(""" | __ )    ___    _   _   _ __   | |_   _   _  \ \/ /""")
print(""" |  _ \   / _ \  | | | | | '_ \  | __| | | | |  \  / """)
print(""" | |_) | | (_) | | |_| | | | | | | |_  | |_| |  /  \ """)
print(""" |____/   \___/   \__,_| |_| |_|  \__|  \__, | /_/\_\ """)
print("""                                        |___/   """)


user_domain_input = str(input("[+] Enter domain to scan >>  [ EX: domain.com.br ]  "))
domain_to_scan = B0untyX(user_domain_input)
domain_to_scan.validate_run_as_root()
domain_to_scan.domain_to_url()
