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

    def domain_to_enumerate(self):
        domain_to_enumerate_command = 'echo '+self.domain+' | subfinder -silent | alterx -enrich | dnsx | anew '+self.domain+'_domains'
        print("[*] domain enumarete execute process starting... [*]")
        popen(domain_to_enumerate_command).read()
        print('[+] domain to enumerate finished... [+]')

    def valit_domains(self):
        valit_domains_command = 'cat '+self.domain+' | httpx -silent -mc 200 | anew '+self.domain+'_200_domains'
        print("[*] Valit domains execute process starting... [*]")
        popen(valit_domains_command).read()
        print("[*] Valit domains execute finished... [*]")

    def ulrs_to_crawlers1(self):
        urls_to_command = 'cat '+self.domain+'_200_domains | katana -silent | anew '+self.domain+'_urls'
        print("[*] urls to crawlers metodh 1 execute process starting... [*]")
        popen(urls_to_command).read()
        print("[+] urls to crawlers finished... [+]")

    def urls_to_crawlers2(self):
        urls_to_command = 'cat '+self.domain+'_200_domains | gauplus | anew '+self.domain+'_urls'
        print("[*] urls to crawlers metodh 2 execute process starting... [*]")
        popen(urls_to_command).read()
        print("[+] urls to crawlers finished... [+]")

    def urls_params(self):
        urls_to_params_command = 'cat '+self.domain+"_urls | grep -Po '(?<=(\?|&))[^&]*(?==)' | anew "+self.domain+'_params'
        print("[*] Filter to crawlers execute process starting... [*]")
        popen(urls_to_params_command).read()
        print("[+] Filter to crawlers for urls params finished... [+]")

    def nuceli_scan(self):
        nuclei_scan_command = 'nuclei -l '+self.domain+'_params -t /root/nuclei-templates -es info | anew '+self.domain+'_nuclei_scan'
        print(" [*] Nuclei scan execute starting... [*]")
        popen(nuclei_scan_command).read()
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
domain_to_scan.valit_domains()
domain_to_scan.ulrs_to_crawlers1()
domain_to_scan.urls_to_crawlers2()
domain_to_scan.ulrs_params()
domain_to_scan.nuceli_scan()