%-------------------------------- Switch case ---------------------
predicates
	switch(integer)
clauses
	switch(X):-X=1,write("First Case"),!.
	switch(X):-X=3,write("Second Case"),!.
	switch(_):-write("Default Case").
%-------------------------------- Calculator -----------------------
predicates
	calc(integer,integer,char)
clauses
	calc(X,Y,'+'):-Z=X+Y,write(X,' + ',Y,' = ',Z),!.
	calc(X,Y,'-'):-Z=X-Y,write(X,' - ',Y,' = ',Z),!.
	calc(X,Y,'*'):-Z=X*Y,write(X,' * ',Y,' = ',Z),!.
	calc(X,Y,'/'):-Z=X/Y,write(X,' / ',Y,' = ',Z),!.
	calc(X,Y,'%'):-Z=X mod Y,write(X,' % ',Y,' = ',Z),!.
	calc(_,_,O):-write(O," is invalid").
goal
	write("X= "),readint(X),nl,
	write("Y= "),readint(Y),nl,
	write("op= "),readchar(O),write(O),nl,
	calc(X,Y,O).
%----------------------------------- Fail -------------------------------
predicates
	num(integer)
	letter(char)
	print
clauses
	num(5).
	num(6).
	letter('a').
	letter('b').
	print:-num(X),letter(Y),write(X," ",Y),nl,fail.
%------------------------------- print from min to max (non_tail)----------------------
 predicates
	start(integer,integer)
	print(integer,integer)
clauses
	start(X,Y):-X>Y,print(X,Y),!.
	start(X,Y):-print(Y,X).
	print(X,X):-write(x),nl,!.
	print(X,Y):-Z=X-1,print(Z,Y),write(X),nl. 
%------------------------------- print from max to min ----------------------
 predicates
	start(integer,integer)
	print(integer,integer)
clauses
	start(X,Y):-X>Y,print(X,Y),!.
	start(X,Y):-print(Y,X).
	print(X,X):-write(x),nl,!.
	print(X,Y):-write(X),Z=X-1,print(Z,Y),nl. 
%------------------------------- print from min to max (tail)----------------------
 predicates
	start(integer,integer)
	print(integer,integer)
clauses
	start(X,Y):-X>Y,print(Y,X),!.
	start(X,Y):-print(X,Y).
	print(X,X):-write(x),nl,!.
	print(X,Y):-write(X),nl,Z=X+ 1,print(Z,Y), 

%------------------------------ print even numbers in range -------------------
predicates
	print(integer,integer)
	even(integer)
clauses
	print(N,N):-even(N),!.
	print(N,M):-even(N),Y=N+1,print(Y,M).
	even(N):-N mod 2=0,!,write(N),nl.
	even(_).

























