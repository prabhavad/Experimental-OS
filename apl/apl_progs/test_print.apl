integer main()
{
	print("STARTED");
	integer pid;
	pid = Fork();
	if (pid == -1) then
		print("ERR1");
	endif;
	pid = Fork();
	if (pid == -1) then
		print("ERR2");
	endif;
	pid = Fork();
	if (pid == -1) then
		print("ERR3");
	endif;
	pid = Fork();
	if (pid == -1) then
		print("ERR4");
	endif;
	
	pid = Exec("print.xsm");
	
	return 0;
}
