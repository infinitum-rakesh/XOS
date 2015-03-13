decl
	integer status;
	string WordRead;
	string write;
enddecl
integer main()
{
	print("CREATE");
	status = Create("myfile1.dat");
	print(status);
	print("OPEN");
	status = Open("myfile1.dat");
	print(status);
	print("WRITE");
	status = Write(0,"r");
	print(status);
	status = Write(0,"a");
	print(status);
	status = Write(0,"k");
	print(status);
	status = Seek(0,3);
	print(status);
	status = Write(0,"e");
	print(status);
	status = Write(0,"s");
	print(status);
	status = Write(0,"h");
	print(status);
	status = Close(0);
	print(status);
	return 0;
}
