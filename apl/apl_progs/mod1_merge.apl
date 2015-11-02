decl
	integer status, fd1,fd2,fd3,fd4,fd;
	string a;
enddecl

integer main()
{	
	fd1 = Open("file1");
	fd2 = Open("file2");
	fd3 = Open("file3");
	fd4 = Open("file4");

	status = Create("merged");
	fd = Open("merged");

	
	string i;

	while(1 == 1) do
		status = Read(fd1, i);

		if(i == "") then
			break;
		endif;
		
		status = Write(fd, i);

		status = Read(fd2, i);	
		status = Write(fd, i);

		status = Read(fd3, i);	
		status = Write(fd, i);

		status = Read(fd4, i);	
		status = Write(fd, i);
	endwhile;

	status = Close(fd1);
	status = Close(fd2);
	status = Close(fd3);
	status = Close(fd4);
	status = Close(fd);

	status = Delete("file1");
	status = Delete("file2");
	status = Delete("file3");
	status = Delete("file4");	
	
	return 0;
}
