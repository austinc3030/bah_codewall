start_here:       
PUSH ebp                             ; ebp        > esp        ; Push the base pointer onto the stack to preserve its value
MOV ebp,esp                          ; esp        = ebp        ; Copy the base pointer value to the stack
SUB esp, 24                          ; esp        = esp - 24   ; Subtract 24 from the value stored on the stack
MOV DWORD PTR [ebp-12], 0            ; 0          > [ebp-12]   ; Copy a value of 0 to ( base pointer - 12 )
CALL hmmm                            ;                         ; Call the function hmmm
hmmm:                                ;                         ; Function definition of hmmm
    PUSH esp                         ; esp        > esp        ; Push esp onto the stack to preserve its value
    PUSH 0x65000065                  ; 0x65000065 > esp        ; Push value at memory location 0x65000065 onto the stack to preserve it
    POP eax                          ; esp        > eax        ; Pop a value from the stack into eax
    POP eax                          ; esp        > eax        ; Pop a value from the stack into eax
    POP eax                          ; esp        > eax        ; Pop a value from the stack into eax
    MOV DWORD PTR [ebp-12], eax      ; eax        > [ebp-12]   ; Copy the value of eax to the ( base pointer - 12 )
    SUB esp, 12                      ; esp        = esp - 12   ; Subtract 12 from the value stored on the stack
    PUSH DWORD PTR [ebp-12]          ; [ebp-12]   > esp        ; Push the value at ( base pointer - 12 ) onto the stack
    CALL puts                        ;                         ; Call the function puts (((prints the output?)))
    ADD esp, 4                       ; esp        = esp + 4    ; Add 4 to the value stored in esp
    PUSH DWORD PTR [ebp-12]          ; [ebp-12]   > esp        ; Push the value at ( base pointer - 12 ) onto the stack
    CALL DECRYPT_BASIC               ;                         ; Call the function DECRYPT_BASIC (found in 2_BASIC.b)
    ADD esp, 16                      ; esp        = esp + 16   ; Add 16 to the esp
    NOP                              ;                         ; No Operation
    LEAVE                            ;                         ; Leave function hmmm???
    RET                              ;                         ; Return from function hmmm???