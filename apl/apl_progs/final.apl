decl
	integer status;
	integer word;
		integer word1;
	integer filedescriptor1;
	integer filedescriptor2;
	integer filedescriptor3;
	integer n ;
	integer counter ;
enddecl
integer main()
{

	status = Create("even.dat");
	print(status);
	filedescriptor1 = Open("even.dat");
	print(filedescriptor1);
	n = 0;
	while n < 2001 do
		status = Write(filedescriptor1,n);
		n = n+2;
	endwhile;
	status = Close(filedescriptor1);
	print(status);


	status = Create("odd.dat");
	print(status);
	filedescriptor2 = Open("odd.dat");
	print(filedescriptor2);
	n = 1;
	while n <= 2001 do
		status = Write(filedescriptor2,n);
		n = n+2;
	endwhile;
	status = Close(filedescriptor2);
	print(status);



	filedescriptor1 = Open("even.dat");
	print(filedescriptor1);

	filedescriptor2 = Open("odd.dat");
	print(filedescriptor2);

	status = Create("merge1.dat");
	print(status);

	filedescriptor3 = Open("merge1.dat");
	print(filedescriptor3);

	counter = 0;
	while(counter <= 1001) do

		status = Read(filedescriptor1,word);
		status = Write(filedescriptor3,word);

		status = Read(filedescriptor2,word1);
		status = Write(filedescriptor3,word1);

		counter = counter + 1;

	endwhile;

	status = Close(filedescriptor1);
	print(status);

	status = Close(filedescriptor2);
	print(status);

	status = Close(filedescriptor3);
	print(status);	
	return 0;
}
