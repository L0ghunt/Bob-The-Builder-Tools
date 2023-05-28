import os
from repo_tools_go import repositories


# Install Go
os.system("wget https://go.dev/dl/go1.15.1.linux-amd64.tar.gz")
os.system("rm -rf /usr/local/go && tar -C /usr/local -xzf go1.15.1.linux-amd64.tar.gz")
os.system("rm -fr /usr/bin/go")
os.system("rm -fr /usr/bin/gofmt")
os.system("mv /usr/local/go/bin/* /usr/bin")
os.system("go version")

# Install tools
for repo in repositories:
    os.system(f"go install {repo}@latest")

# Verify installation
os.system("echo 'Installed tools:'")
for repo in repositories:
    tool_name = repo.split("/")[-1]
    os.system(f"echo {tool_name}")