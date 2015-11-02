integer main()
{
	integer i,fd1,fd2,fd3,fd4;
	read (i);
	fd1 = Create("1.dat");
	fd2 = Create("2.dat");
	fd3 = Create("3.dat");
	fd4 = Create("4.dat");
	
	integer a; //Number to be written
	integer counter; 
	integer s; //status of Write
	s=0;
	if(fd1==0 && fd2==0 && fd3==0 && fd4==0) then
		
		fd1 = Open("1.dat");
		fd2 = Open("2.dat");
		fd3 = Open("3.dat");
		fd4 = Open("4.dat");
		if(fd1==-1 || fd2==-1 || fd3==-1 || fd4==-1) then
			print ("OpenError");
		endif;
		
		a=4;
		
		counter=0;			
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
		s=Close(fd1);
		s=Close(fd2);
		s=Close(fd3);
		s=Close(fd4);
		print("Written");
		print("Enter 1");
		print("To Merge");
		
		read(a);
		
		fd1 = Open("1.dat");
		fd2 = Open("2.dat");
		fd3 = Open("3.dat");
		fd4 = Open("4.dat");
		s=Create("M.dat");
		s=Open("M.dat");		
		while(1==1) do
			counter=Read(fd1,a);
			if(counter==-1) then
				break;
			endif;
			counter=Write(s,a);

			counter=Read(fd2,a);
			counter=Write(s,a);

			counter=Read(fd3,a);
			counter=Write(s,a);

			counter=Read(fd4,a);
			counter=Write(s,a);
		endwhile;
		counter=Close(s);		
		s=Close(fd1);
		s=Close(fd2);
		s=Close(fd3);
		s=Close(fd4);
			
	else
		print("ERROR!");	
	endif;
	
	return 0;
}
				
