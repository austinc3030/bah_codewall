start_here:
PUSH ebp                        ; save the value of ebp
MOV ebp,esp                     ; ebp now points to the top of the stack
SUB esp, 24                     ; space allocated on the stack for the local variables
MOV DWORD PTR [ebp-12], 0       ; location of variable with value 0
CALL hmmm                       ; calls function hmmm
hmmm:                           ; defines function hmmm
PUSH esp                        ; save the value of ebp
PUSH 0x65000065                 ; 
POP eax
POP eax
POP eax
MOV DWORD PTR [ebp-12], eax
SUB esp, 12
PUSH DWORD PTR [ebp-12]
CALL puts
ADD esp, 4
PUSH DWORD PTR [ebp-12]
CALL DECRYPT_BASIC
ADD esp, 16
NOP
LEAVE
RET