integer main(){
	string a,b,c;
	
	integer pid,e;
	while(1==1) do
		print("Welcome");
		read(a);	
		pid=Fork();
		e=Getpid();
		if(pid != -2) then
			e=Wait(pid);
			print("Waiting Done");
		endif;
		if(pid == -2) then
			e=Exec(a);
			if(e==-1) then
				print("Can't Run");
			endif;
		endif;
	endwhile;
	return 0;
}
