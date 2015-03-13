integer main(){
	integer a,b,c,d;
	string cmd,prompt;
	prompt = "gelivi:~$ ";
	cmd="";
	while(cmd!="end")do
		print(prompt);
		read(cmd);
		a=Fork();
		if(a==-2)then
			b=Exec(cmd);
			if(b==-1)then
				print(1000);
				breakpoint;
			else
				print( "success");	
			endif;	
		else
			d=Wait(a);
//			breakpoint;
		endif;
	endwhile;
//	breakpoint;
	return 0;
}
