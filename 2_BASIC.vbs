1 REM DECRYPT_BASIC( PARAM ) 
2 OUTPUT$ = ""
3 FOR I% = 1 TO LEN( PARAM$ )
4 VALUE% = ASC( MID$( PARAM$, I%, 1 ) )
5 IF I% = 1 THEN OUTPUT$ = OUTPUT$ + CHR$( VALUE% + &H20 )
6 IF I% MOD 2 <> 0 THEN GOTO 15
7 WHILE 1
8 VALUE% = VALUE% XOR I%
9 IF VALUE% > &H32 THEN VALUE% = INT( VALUE% / I% ) ELSE VALUE% = VALUE% * 4
10 IF VALUE% < &H64 THEN GOTO 7
11 VALUE% = VALUE% + ( I% ^ 4 )
12 OUTPUT$ = OUTPUT$ + CHR$( VALUE% - I% ) + CHR$( VALUE% + 1 )
13 GOTO 16
14 WEND
15 IF LEN( OUTPUT$ ) > 1 THEN OUTPUT$ = OUTPUT$ + CHR$( VALUE% )
16 NEXT I%
17 PRINT OUTPUT$
18 CIPHERTEXT$ = OUTPUT$
19 GOTO DECRYPT_LISP
