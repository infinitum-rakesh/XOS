decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile1.dat");
	print(status);
	status = Create("myfile2.dat");
	print(status);
	status = Create("myfile3.dat");
	print(status);
	return 0;
}
