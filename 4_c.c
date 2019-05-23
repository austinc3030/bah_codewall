#define SZ   120 
#define OLEN 13 

#define randOpen( ) 
    do 
    { 
        
        fd = open( "/dev/urandom", O_RDONLY ); 
        read ( fd, tbl, SZ );
    
    } while( 0 );

#define FILL( ) 
    do 
    { 

        do 
        { 
            
            tbl[ *c ] = *c; 
        
        } while ( *( ++c ) != '\0' ); 
    
    } while( 0 );

#define PUSHOFF( ) 
    do 
    { 

        for ( i = 0; i < sizeof( offsets ) / sizeof( int32_t ); i++ ) 
        { 
        
            tbl[ i ] = offsets[ i ]; 
        
        } 
    
    } while ( 0 );

static int8_t tbl[ SZ ]; 

char *poke( char *word ) 
{ 
    char     *wordArr    = calloc( OLEN, sizeof( char ) ); 
    char     *c          = wordArr; 
    int32_t   offsets[ ] = OFFS; 
    uint32_t  i          = 0; 
    uint32_t  len        = strlen(word); 
    
    XTND( ); 
    FILL( ); 
    PUSHOFF( ); 
    
    return wordArr; 

} 

void pull( char *word ) 
{ 

    char     *c       = word; 
    uint32_t  counter = 0; 
    uint8_t  *output  = calloc( OLEN, sizeof( uint8_t ) ); 
    
    do 
    { 
        
        output[ counter ] = *c + tbl[ counter ]; 
    
    } while( *( ++c ) != '\0' && ++counter ); 
    
    printf( "%s\n", output ); 
    
    decrypt_python( output ); 

} 

void decrypt_c( char *arg ) 
{ 

    int32_t i, fd; 
    randOpen( ); 
    pull( poke( arg ) ); 

}