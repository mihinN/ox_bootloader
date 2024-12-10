default: 
	nasm -f bin ox_boot.asm -o ox_boot.bin

run: 
	qemu-system-x86_64 ox_boot.bin

push: 
	git status
	git add .
	git commit -m "updated: ox_boot"
	git push

