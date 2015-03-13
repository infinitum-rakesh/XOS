decl
	integer status;
enddecl
integer main()
{
	status = Open("myfile1.dat");
	print(status);
	status = Open("myfile2.dat");
	print(status);
	status = Open("myfile3.dat");
	print(status);
	return 0;
}
