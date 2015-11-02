integer main(){
	string a,b;
	b="INIT.xsm";
	integer pid,e;
	print("Welcome");
	read(a);	
	pid=Fork();
	e=Getpid();

	if(pid != -2) then
		e=Wait(pid);
		e=Exec(b);
	endif;
	if(pid == -2) then
		e=Exec(a);
		if(e==-1) then
			print("Can't Run");
		endif;
	endif;
	return 0;
}
