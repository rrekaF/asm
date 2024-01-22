echo "Assembling"
as main.asm -o main.assembled 
echo "Compiling"
gcc main.assembled -o asm.out  -nostdlib -static
echo "---Running---"
./asm.out
echo "----Done!----"
echo "exit code: "
echo $?