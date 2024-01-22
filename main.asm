.global _start
.intel_syntax noprefix

# https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/
_start:
    mov rax, 1 # prepare a sys_write
    mov rdi, 1 # fd 1 = stdout
    lea rsi, [hello_world] # load effective address of hello_world
    mov rdx, 14 # length of output
    syscall

    # sys exit call
    mov rax, 60 # prepare for exit
    mov rdi, 0 # exit with code 0 
    syscall

hello_world:
    .asciz "Hello, world!\n" # C style ascii string (with \0 at the end)
