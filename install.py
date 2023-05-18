import os

# Repositories
repositories = [
    "github.com/projectdiscovery/subfinder/v2/cmd/subfinder",
    "github.com/Edu4rdSHL/findomain",
    "github.com/michenriksen/aquatone",
    "github.com/projectdiscovery/dnsx/cmd/dnsx",
    "github.com/tomnomnom/tlsenum/cmd/tlsenum",
    "github.com/projectdiscovery/puredns/cmd/puredns",
    "github.com/maurosoria/dirsearch",
    "github.com/tomnomnom/anew",
    "github.com/tomnomnom/unfurl",
    "github.com/JohnWoodman/katana",
    "github.com/projectdiscovery/shuffledns/cmd/shuffledns"
]

# Install Go
os.system("wget https://go.dev/dl/go1.20.4.linux-amd64.tar.gz")
os.system("rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz")
os.system("mv /usr/local/go/bin/* /usr/bin")
os.system("go version")

# Add Go path to .bashrc
os.system("echo 'export PATH=$PATH:/usr/local/go/bin' >> /root/.bashrc")

# Install tools
for repo in repositories:
    os.system(f"go install {repo}@latest")

# Verify installation
os.system("echo 'Installed tools:'")
for repo in repositories:
    tool_name = repo.split("/")[-1]
    os.system(f"echo {tool_name}")