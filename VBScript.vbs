PARAM = "0"
OUTPUT = ""
FOR I = 1 TO LEN( PARAM )
    VALUE = ASC( MID( PARAM, I, 1 ) )
    IF I = 1 THEN OUTPUT = OUTPUT + CHR( VALUE + &H20 ) END IF
    IF I MOD 2 <> 0 THEN
        IF LEN( OUTPUT ) > 1 THEN OUTPUT = OUTPUT + CHR( VALUE ) END IF
    ELSE
        FLAG = 1
        DO WHILE FLAG
            VALUE = VALUE XOR I
            IF VALUE > &H32 THEN VALUE = INT( VALUE / I ) ELSE VALUE = VALUE * 4 END IF
            IF VALUE >= &H64 THEN 
                VALUE = VALUE + ( I ^ 4 )
                OUTPUT = OUTPUT + CHR( VALUE - I ) + CHR( VALUE + 1 )
                FLAG = 0
            END IF
        LOOP
    END IF
NEXT
WScript.Echo OUTPUT