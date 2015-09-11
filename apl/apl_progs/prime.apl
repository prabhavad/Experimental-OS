decl
	integer prime(integer a);
enddecl

integer prime(integer a){
	integer b,an;
	b=2;
	an=1;
	if(a<=3) then
		an=1;
	endif;
	while (b*b<=a) do
		if (a%b==0) then
			an=0;
		endif;
		b=b+1;
	endwhile;
	return an;
}

integer main(){
	integer a;
	read (a);
	integer b;
	b=2;
	while(b<a) do
		if (prime(b)==1) then
			print (b);
		endif;
		b=b+1;
	endwhile;
	return 0;
}
