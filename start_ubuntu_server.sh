#!/bin/bash

args=(
	# Type & VM Engine
	-accel hvf
	-M virt,highmem=off
	
	# System Specs
	-name MyFirstQemu
	-m 2G 
	-cpu host
	-smp 2
	
	# UEFI
	-drive file=QEMU_EFI-pflash.raw,if=pflash,format=raw,readonly=on
	-drive file=vars-template-pflash.raw,if=pflash,format=raw
	
	# Disks
	-drive if=none,file=ubuntu_server_22_04.qcow2,format=qcow2,id=hd0
	-device virtio-blk-device,drive=hd0,serial="dummyserial" 
	-cdrom ubuntu-22.04.1-live-server-arm64.iso
	
	# Devices
	-device usb-ehci 
	-device usb-kbd 
	-device usb-mouse 
	-usb

	# Network
	-device virtio-net-device,netdev=net0
	-netdev user,id=net0

	# Display
	-device virtio-gpu
	-vga none

	# Serial & Terminal
	-serial stdio
)

qemu-system-aarch64 "${args[@]}"
