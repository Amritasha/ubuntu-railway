![Ubuntu](https://img.shields.io/badge/Ubuntu-26.04%20LTS-E95420?logo=ubuntu)
![Docker](https://img.shields.io/badge/Docker-Supported-blue?logo=docker)

# Deploy and Host Ubuntu Terminal on Railway

Ubuntu Terminal is a browser-accessible Ubuntu 26.04 LTS shell deployed on Railway via [ttyd](https://github.com/tsl0922/ttyd). The most widely used Linux distribution in the cloud — password-protected access, persistent storage at `/root`, essential dev tools, and common C/system libraries pre-installed so most language runtimes and native extensions compile out of the box.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/new/template)

## About Hosting Ubuntu Terminal

Hosting Ubuntu Terminal on Railway means spinning up an Ubuntu 26.04 LTS container with a browser-based terminal exposed via ttyd. Ubuntu 26.04 is a long-term support release, giving you a stable, well-documented environment with the full apt ecosystem at your disposal. Railway handles the build, networking, and SSL automatically. The image ships with commonly used C libraries — libssl-dev, zlib1g-dev, libffi-dev, libsqlite3-dev, libreadline-dev, libncurses-dev, libxml2-dev, libxslt1-dev, libpq-dev, default-libmysqlclient-dev, libyaml-dev, libpng-dev, libjpeg-dev, and linux-libc-dev — so most language runtimes and native extensions compile without extra setup. A persistent volume is mounted at `/root` so your files survive restarts.

## Common Use Cases

- Familiar Ubuntu LTS environment in the cloud accessible from any browser without local setup
- Building and testing software against Ubuntu — the most common Linux deployment target
- Learning Linux, shell scripting, and system administration in a clean, reproducible environment

## Dependencies for Ubuntu Terminal Hosting

- [ttyd](https://github.com/tsl0922/ttyd) — browser-based terminal emulator that serves the shell over HTTP
- [Ubuntu 26.04 LTS](https://ubuntu.com/) — long-term support release with full apt ecosystem

### Deployment Dependencies

- [ttyd 1.7.3 x86_64 binary](https://github.com/tsl0922/ttyd/releases/tag/1.7.3)
- [Ubuntu on Docker Hub](https://hub.docker.com/_/ubuntu)
- [Railway Volumes documentation](https://docs.railway.app/reference/volumes)

## Environment Variables

| Variable | Description |
|----------|-------------|
| `PORT` | Port for ttyd to listen on (set automatically by Railway) |
| `USERNAME` | Login username for the web terminal |
| `PASSWORD` | Login password for the web terminal |

> **Note:** Always set USERNAME and PASSWORD before deploying.

## Pre-installed Tools

| Category | Tools |
|---|---|
| Editors | vim, nano |
| System | htop, tree, lsof, strace, less, man |
| Files | unzip, zip |
| Build | gcc, g++, make, build-essential |
| Network | ifconfig, ip, ping, dig, openssh-client, telnet, netcat |
| Data | jq |
| General | sudo, python3, pip, git, curl, wget, fastfetch |
| Libraries | libssl-dev, zlib1g-dev, libffi-dev, libsqlite3-dev, libreadline-dev, libncurses-dev, libxml2-dev, libxslt1-dev, libpq-dev, default-libmysqlclient-dev, libyaml-dev, libpng-dev, libjpeg-dev, linux-libc-dev |

## Installing More Packages

```bash
apt-get install -y <package-name>
```

> **Note:** Files saved inside `/root` persist across restarts. Packages installed via `apt-get` will not survive a full redeploy.

## Why Deploy Ubuntu Terminal on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Ubuntu Terminal on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
