integer main()
{
	integer pid;	
	print ("Before Fork");
	
	pid = Fork();
	print(pid);
	
	pid = Fork();
	print(pid);
	
	pid = Fork();
	print(pid);
	
	pid = Fork();
	print(pid);
	
	print("aFTER");
	integer e,a;
	
	if(pid == -2) then
		print("Child Process");
		a=1;
		while(a<=20) do
			print(a);
			a=a+2;
		endwhile;
		
	else
		print("Parent Process");
		
		a=2;
		while(a<=20) do
			print(a);
			a=a+2;
		endwhile;
	endif;
	return 0;
}
