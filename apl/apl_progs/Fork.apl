integer main()
{
	integer pid;	
	integer e,a;
	e = 0;
	while(e<5) do
		pid = Fork();

		print (pid);
		e=e+1;
	endwhile;
	return 0;
}
