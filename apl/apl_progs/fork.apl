decl
	integer pid;
enddecl

integer main()
{

print("Bfork");
pid = Fork();
print(pid);
print("After Fork");
return 0;
}
