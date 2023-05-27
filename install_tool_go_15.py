import os
from repo import repositories


# Install Go
os.system("wget https://go.dev/dl/go1.15.1.linux-amd64.tar.gz")
os.system("rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz")
os.system("cd /usr/bin")
os.system("rm -fr go gofmt")
os.system("cd /usr/local/go/bin")
os.system("mv * /usr/bin")
os.system("cd /home")
os.system("go version")

# Install tools
for repo in repositories:
    os.system(f"go install {repo}@latest")

# Verify installation
os.system("echo 'Installed tools:'")
for repo in repositories:
    tool_name = repo.split("/")[-1]
    os.system(f"echo {tool_name}")