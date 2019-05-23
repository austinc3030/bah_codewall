public class Decrypt 
{ 
    
    public static String decrypt_java( String key ) 
    {
    
        int     n       = key.length( ); 
        int     m       = 9; 
        char[ ] result  = new char[ m ]; 
        
        for ( int  i = 1;  i < n / 2; i++ ) 
        { 
     
            result[ i ] = ( char ) ( key.charAt( i + 2 ) ); 
     
        } // End for
        
        for ( int i = 0; i < ( n - 1 ); i++ ) 
        {

            if ( i == 0 ) 
            {
            
                result[ i ] = ( char ) ( key.charAt( i ) + ( i + 2 ) ); 
            
            } 
            else if ( i == ( n - 3 ) ) 
            { 
            
                result[ i ] = ( char ) ( key.charAt( i + 2 ) + i ); 
            
            } 
            else if ( i == ( n - 2 ) ) 
            { 
            
                result[ i ] = ( char ) ( key.charAt( i - 4 ) + ( i - 1 ) ); 
            
            } // End ifelse
        
        } // End for
        
        for ( int i = ( n - 1 ); i < m; i++ ) 
        { 
            
            if ( i == ( n - 1 ) || i == ( m - 1 ) ) 
            { 
            
                result[ i ] = ( char ) ( key.charAt( 0 ) - ( n - 2 ) ); 
            
            } 
            else if ( i == n ) 
            { 
            
                result[ i ]= ( char ) ( key.charAt( 0 ) - ( n - 1 ) ); 
            
            } 
            else 
            { 
            
                result[ i ] = ( char ) ( key.charAt( 0 ) - ( i - 5 ) ); 
            
            } // End ifelse 

        } // End for
        
        String joined = new String( result );

        System.out.println( joined ); 
        decrypt_javascript( joined ); 
    
    } // End decrypt_java

} // End Decrypt