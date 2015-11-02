integer main()
{
	integer i,fd1,fd2,fd3,fd4;
	input (i);
	fd1 = Create("1.dat");
	fd2 = Create("2.dat");
	fd3 = Create("3.dat");
	fd4 = Create("4.dat");
	if(fd1==0 && fd2==0 && fd3==0 && fd4==0) then
		fd1 = Open("1.dat");
		fd2 = Open("2.dat");
		fd3 = Open("3.dat");
		fd4 = Open("4.dat");
		if(fd1!=0 || fd2!=0 || fd3!=0 || fd4!=0) then
			print ("OpenError");
		endif;
		
		integer a;
		a=4;
		
		integer counter = 0;
		integer s=0;
		while(counter < i) do
			s=Write(fd1,a);
			if(s==-1) then
				print("Write1!");
			endif;				
			s=Write(fd2,a+1);
			if(s==-1) then
				print("Write2!");
			endif;				
			s=Write(fd3,a+2);
			if(s==-1) then
				print("Write3!");
			endif;		
				
			s=Write(fd4,a+3);
			if(s==-1) then
				print("Write4!");
			endif;
			a=a+4;
			counter=counter + 1;
		endwhile;

		print("Written");
		print("Enter 1");
		print("To continue");
		
		input(a);
	else
		print("ERROR!");	
	endif;
	
	return 0;
}
				
