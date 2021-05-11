BITS 64

global _start

section .rodata
    filename db "file",0


_start:
    mov rax, 90
    mov rdi, filename
    mov rsi, 777
    syscall
    jmp _exit

_exit:
    mov rax, 60
    mov rdi, 0
    syscall

