.global _start
_start:
    mov x0, #1          // stdout
    ldr x1, =msg        // buffer
    mov x2, #14         // length
    mov x8, #64         // syscall: write
    svc #0

    mov x0, #0          // syscall: exit
    mov x8, #93
    svc #0
msg:
    .ascii "Hello ARM Pi!\n"
