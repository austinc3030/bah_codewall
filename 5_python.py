def decrypt_python( key ): 

    result = ""
    space  = " "

    for i in range( 0, 3 ):

        if i == 0: 

            result += key[ i ] + chr( ord( key[ i + 2 ] ) - 1 ) 

        elif i == 1:

            result += space + key[ i ]

        else:

            result += chr( ord( key[ i - 1 ] ) + 1 ) + key[ i ] 

        # End for

    print( result )
    
    decrypt_java( result )

# End decrypt_python( )