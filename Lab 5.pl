%------------------------------ Factorial (non_tail) ---------------------------
predicates
	fact(integer,integer)
clauses
	fact(1,1):-!.
	fact(N,F):-Y=N-1,fact(Y,YF),F=N*YF. 
%------------------------------ Factorial (tail) ---------------------------
predicates
	fact(integer,integer,integer)
clauses
	fact(1,F,F):-!.
	fact(N,F,R):-P=F*N,Y=N-1,fact(Y,P,R). 
%------------------------------ Sum of even numbers in range ----------------
predicates
	sum(integer,integer,integer)
	even(integer,integer)
clauses
	sum(N,N,S):-even(N,E),A=S+E,write(A),!.
	sum(N,M,S):-even(N,E),A=S+E,Y=N+1,sum(Y,M,A).
	even(N,E):-N mod 2=0,!,E=N.
	even(_,E):-E=0.
%------------------------------ Random --------------------------------
predicates
	person(integer,symbol)
	print(integer)
	rand(integer)
clauses
	person(1,"Ali").
	person(2,"Mohamed").
	person(3,"Aya").
	person(4,"Omar").
	person(5,"Reda").
	rand(X):-random(Y),X=4*Y+1.
	print(0):-!.
	print(N):-rand(Y),person(Y,X),write(X),nl,
	NI=N-1,print(NI).
























