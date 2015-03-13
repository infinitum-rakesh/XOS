integer main()
{
integer a;
string Input, prog_name;
while ( 1==1 ) do
print ("Enter Command");
read ( Input );
if ( Input == "exit") 
then
Exit();
	endif;
	if ( Input == "Exec")
	then
		read ( prog_name );		
		a = Fork();	
		if ( a == -1) then
		print("Error");
		else
		if ( a == -2 )
		then
		d = Exec ( prog_name );
		else 
		d = Wait ( a );		
		endif;
	endif;	
	
else
print("NOT VALID COMMAND");
endif;
endwhile;
return 0;
}
