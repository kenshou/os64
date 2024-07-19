nasm boot.asm -o ../tmp/boot.bin  
dd if=/dev/zero of=../tmp/os.img bs=512 count=2880     
dd if=../tmp/boot.bin of=../tmp/os.img conv=notrunc
qemu-system-x86_64 -drive file=../tmp/os.img,format=raw
rm ../tmp/boot.bin ../tmp/os.img