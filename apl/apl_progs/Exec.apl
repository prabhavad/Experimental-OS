integer main()
{
	integer pid;	
	
	print ("Before Fork");
	pid = Fork();
	integer e,a;
	//print(pid);
	if(pid == -2) then
		print("Child Process");
		e=Exec("odd.xsm");
		print(e);
	else
		print("Parent Process");
		//print(pid);
		a=2;
		while(a<=20) do
			print(a);
			a=a+2;
		endwhile;
	endif;
	return 0;
}
//load --exec
