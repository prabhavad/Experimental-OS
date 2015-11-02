decl
	integer i, status, fd;
	string a;
enddecl

integer main()
{	
	
	read(i);

	integer j, data;

	j = 1;

	status = Create("file1");

	if(status == -1) then
		print("fail create f1");
	endif;
	
	fd = Open("file1");

	if(status == -1) then
		print("fail open f1");
	endif;

	while (j<=i) do
		data = 4*j;
		status = Write(fd, data);

		if(status == -1) then
			print("fail write f1");
		endif;
		j = j+1;
	endwhile; 

	status = Close(fd);

	if(status == -1) then
		print("fail close f1");
	endif;

	j = 1;

	status = Create("file2");

	if(status == -1) then
		print("fail create f2");
	endif;
	
	fd = Open("file2");

	if(status == -1) then
		print("fail open f2");
	endif;

	while (j<=i) do
		data = 4*j + 1;
		status = Write(fd, data);

		if(status == -1) then
			print("fail write f2");
		endif;
		j = j+1;
	endwhile; 

	status = Close(fd);

	if(status == -1) then
		print("fail close f2");
	endif;


	j = 1;

	status = Create("file3");

	if(status == -1) then
		print("fail create f3");
	endif;
	
	fd = Open("file3");

	if(status == -1) then
		print("fail open f3");
	endif;

	while (j<=i) do
		data = 4*j + 2;
		status = Write(fd, data);

		if(status == -1) then
			print("fail write f3");
		endif;
		j = j+1;
	endwhile; 

	status = Close(fd);

	if(status == -1) then
		print("fail close f3");
	endif;

	j = 1;

	status = Create("file4");

	if(status == -1) then
		print("fail create f4");
	endif;
	
	fd = Open("file4");

	if(status == -1) then
		print("fail open f4");
	endif;

	while (j<=i) do
		data = 4*j + 3;
		status = Write(fd, data);

		if(status == -1) then
			print("fail write f4");
		endif;
		j = j+1;
	endwhile; 

	status = Close(fd);

	if(status == -1) then
		print("fail close f4");
	endif;

	return 0;
}
