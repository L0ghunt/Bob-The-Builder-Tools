import os

class B0untyX(object):
    def __init__(self, domain):
        self.domain = domain

    def validate_run_as_root(self):
        if not os.geteuid() == 0:
            print("-] Please run this script as root... [-]")
            exit()
        else:
            pass

    def domain_to_enumerate1(self):
        domain_to_enumerate_command = 'echo '+self.domain+' | subfinder -silent | dnsx | anew '+self.domain+'_domains_1'
        print("[*] domain enumarete execute process starting... [*]")
        os.popen(domain_to_enumerate_command).read()
        print('[+] domain to enumerate finished... [+]')

    def domain_to_enumerate2(self):
        domain_to_enumerate_command = 'amass enum -d '+self.domain+' | dnsx | anew '+self.domain+'_domains_2'
        print("[*] domain enumarete execute process starting... [*]")
        os.popen(domain_to_enumerate_command).read()
        print('[+] domain to enumerate finished... [+]')

    def fusion_domains(self):
        fusion_command = 'cat * | anew All_domains'
        print("[*] domain fusion execute process starting... [*]")
        os.popen(fusion_command).read()
        print('[+] domain to fusion finished... [+]')

    def valit_domains(self):
        valit_domains_command = 'cat All_domains | httpx -silent -mc 200 | anew '+self.domain+'_200_domains'
        print("[*] Valit domains execute process starting... [*]")
        os.popen(valit_domains_command).read()
        print("[*] Valit domains execute finished... [*]")

    def urls_to_param(self):
            urls_to_command = 'cat '+self.domain+'_200_domains | gauplus | uro | anew '+self.domain+'_urls'
            print("[*] urls to crawlers metodh 2 execute process starting... [*]")
            os.popen(urls_to_command).read()
            print("[+] urls to crawlers finished... [+]")
   
    def nuclei_scan(self):
        nuclei_scan_command = 'nuclei -l '+self.domain+'_urls -t /root/nuclei-templates/* -es info | notify'
        print(" [*] Nuclei scan execute starting... [*]")
        os.popen(nuclei_scan_command).read()
        print(" [+] Nuclei scan execute finished [+]")


   

    
    

print("""  ____                            _            __  __""")
print(""" | __ )    ___    _   _   _ __   | |_   _   _  \ \/ /""")
print(""" |  _ \   / _ \  | | | | | '_ \  | __| | | | |  \  / """)
print(""" | |_) | | (_) | | |_| | | | | | | |_  | |_| |  /  \ """)
print(""" |____/   \___/   \__,_| |_| |_|  \__|  \__, | /_/\_\ """)
print("""                                        |___/   """)


user_domain_input = str(input("[+] Enter domain to scan >>  [ EX: domain.com.br ]  "))
domain_to_scan = B0untyX(user_domain_input)
domain_to_scan.validate_run_as_root()
domain_to_scan.domain_to_enumerate()
domain_to_scan.fusion_domains()
domain_to_scan.valit_domains()
domain_to_scan.ulrs_to_param()
domain_to_scan.nuclei_scan()