default:
	cargo build

build:
	cargo bootimage

qemu: build
	qemu-system-x86_64 -drive format=raw,file=target/x86_64-loki_kernel/debug/bootimage-loki_kernel.bin

.PHONY: default

