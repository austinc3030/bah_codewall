function decrypt_javascript( key ) 
{ 

    output = "";

    for ( i = 0; i < key.length; i += 3 ) 
    { 
        
        var num = 0; 
        for ( j = i; j < i + 3; j++ ) 
        { 
        
            num += key.charCodeAt( j ) + j; 
        
        } 
        
        num >>= i; 
        
        if ( num > 100 ) 
        { 
        
            num = ( ( num - 1 ) / 3 ); 
            num -= ( i + 3 ) << ( i + 2 ); 
        
        } 
        else if ( num > 10 ) 
        { 
            
            num = ( num * i ) - ( i * i ); 
        
        } 
        else if ( num > 1 ) 
        { 
        
            num = ( num << i ) / ( i / 2 ); 
            num += ( i << 1 ) - ( i / 3 ); 
        
        } 
        
        output += String.fromCharCode( num ); 
    
    } 
    
    console.log( output ); 
    decrypt_go( output ); 

}