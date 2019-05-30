extern puts
global main
main:
PUSH ebp
MOV ebp,esp
SUB esp, 24
MOV DWORD [ebp-12], 0
CALL hmmm
hmmm:
    PUSH esp
    POP eax
    POP eax
    MOV DWORD [ebp-12], eax
    SUB esp, 12
    PUSH DWORD [ebp-12]
    CALL puts
    ADD esp, 4
    PUSH DWORD [ebp-12]
    ADD esp, 16
    NOP
    LEAVE
    RET
