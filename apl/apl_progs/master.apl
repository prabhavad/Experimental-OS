decl
	integer pid,i,s;
enddecl
integer main()
{
	pid = Fork();
	pid = Fork();
	pid = Fork();
	pid = Fork();
	pid = Fork();
	pid = Exec("ex10.xsm");	
	return 0;
}
