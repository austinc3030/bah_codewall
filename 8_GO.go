func decrypt_go( inp string ) string {

	final := make( [ ]rune, 12 )
	d := "\x0b\x0f\x03\x05\x1c\x1b\x14\x01\x1d\x1b\x1a"

	if len( inp ) != 4 {

	return ""

	} // End if

	var cnt int = -1

	for i, l := range d {

		if i % len( inp ) == 0 {

		cnt++

		} // End if

		final[ i ] = rune( inp[ cnt ] ) ^ l

	} // End for

	fmt.Println( string( final ) )
	
	return string( final )

} // End decrypt_go( )