
integer main()
{

integer a, b, c, d;

string Input, ip1, ip2, wordRead, fileName, ar;

while ( 1==1 ) do

	print ("Enter Command");
	read ( Input );
        if ( Input == "exit") 
	then
		Exit();
	endif;

	if ( Input == "copy" )
	then
		read ( ip1);
		read ( ip2);
	
		a = Open ( ip1 );
		if ( a == -1 )
		then
			print ( "ERROR");
			continue;
		endif;

		b = Open ( ip2 );
		if ( b != -1 )
		then
			print ( "OVERWRITE?  YES / NO" );
			read ( ar );
			if ( ar != "YES")
			then
				continue;
			else
				
				d =  Close ( b);	
				d = Delete ( ip2 );			
			endif;
		
		endif;				


		b = Create ( ip2);

		if ( b == -1)
		then
			print ( "Error");
			continue;
		endif;

		d = Open ( ip2 );
		c = 0;

		while ( c != -1) do
			c = Read ( a, wordRead ); 		
			if ( c != -1 )
			then
				b = Write ( d, wordRead );
			endif;
		endwhile; 
		
		b = Close ( a);
		c = Close ( d);
							

	endif;

	





	if ( Input == "create")
	then
		read ( fileName);		
		a = Create ( fileName);
		if ( a != 0 )
		then
			print ("invalid");
			
		endif;

	endif;

	if ( Input == "delete")
	then
		read ( fileName);		
		a = Delete ( fileName);
		if ( a != 0 )
		then
			print ("invalid");
			
		endif;

	endif;
	
	if ( Input == "run")
	then
		read ( ip1 );		
		a = Fork();
		if ( a == -1) 
		then
			print ("error");
			

		else
			if ( a == -2 )
			then
				d = Exec ( ip1 );
			else
				d = Wait ( a );
			endif;
		endif;	

	endif;
 




	
endwhile;

return 0;
}	

