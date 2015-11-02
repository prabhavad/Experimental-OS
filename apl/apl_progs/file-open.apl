decl 	
	integer status;
enddecl
integer main()
{
	integer fd,fd2;
	
	fd = Create("myFile2.dat");
	print (fd);

	fd = Open("myFile2.dat");
	fd2 = Open("myFile2.dat");	
	
	status =  Write(fd,"OS Lab");
	print(status);
	
	status =  Write(fd2,"wewe");
	
	
	print(status);
	
	string c;
	status=Read(fd,c);
	print(status);
	print(c);
	return 0;
}
