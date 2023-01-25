# About
This repository contains all my workspace templates, configurations, list of extensions and other tools I use on my projects. There are different branches to this repository. Each of them corresponds to differen workspaces. For example; The branch C++_Workspace, contains all the necessary information and stuff about my C++ projects and codes.

I use this repository to keep track of my configuration files and project structure templates across different machines. 

Current branches and their purposes:
```
|- main -> Contains system-wide config files such as rc files and automated bash scripts
|- C_Workspace -> Basic C99 project template. I use this branch as a reference when writing C codes.
|- C++_Workspace -> Basic C++20 project template. It has the same purpose as C_Workspace but for C++ projects.
|- Python_Workspace -> Consists of a README.md file and some .vscode settings for my Python working environment.

```

# Current Tools, Programs & Standards I Use
C Standard == C99 \
C++ Standard == C++20 \
Python Version == 3.11 \
\
zsh == 5.8.1 \
vim == 9.0.1 \
cmake == 3.25.1 \
VSCode == 1.74.2 \
CLion == 2022.3.1 \
QEMU == 7.1.0 

# QEMU Emulation/Virtualization on Apple Silicons
Below is couple of commands that installs QEMU and creates a Ubuntu Server 22.04.

TODO: Better description & guide \
TODO: Add more start scripts \
TODO: Setup x86_64 emulation \


```bash
# Install QEMU
$ brew install qemu

# Check if QEMU is installed
$ qemu-system-aarch64 --version

# Download the OS image (for example: Ubuntu Server)
$ wget https://releases.ubuntu.com/jammy/ubuntu-22.04.1-live-server-amd64.iso

# Create VM Disk named 'disk.qcow2' with size 16GB
$ qemu-img -f qcow2 disk.qcow2 16G

# Retrieve the AARCH64 UEFI firmware from the EDK-II project
# https://rpmfind.net/linux/rpm2html/search.php?query=edk2-aarch64

# Start the server using the bash script
$ ./start_ubuntu_server.sh
```


# Visual Studio Code Extensions
Here are the VSCode extensions I use as of 25 January 2023.

## General
Remote Development by Microsoft == v0.23.0 \
Live Share by Microsoft == v1.0.5788 \
SQLite Viewer by Florian Klampfer == v0.1.5 \
shellman by Remisa == v5.6.0 \
ShellCheck by Timon Wong == v0.29.2 \
Markdown All in One by Yu Zhang == v3.5.0 \
vscode-icons-mac by Wayou Liu == v7.25.3

## For C/C++
CMake by twxs == v0.0.17 \
CMake Tools by Microsoft == v1.13.41 \
C/C++ by Microsoft == v1.13.8 \
Makefile Tools by Microsoft == v0.6.0

## For Python
Python by Microsoft == v2022.20.1 \
autoDocstring - Python Docstring Generator == v0.6.1

## For HTML, CSS & JavaScript
Prettier - Code formatter by Prettier == v9.10.3
