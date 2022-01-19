%--------------------------------- Even or Odd ----------------------------
 
predicates
	check(integer)
clauses
	check(X):-X mod 2=0,write("Even");write("Odd").
goal
	write("Enter number: "),readint(X),nl,
	check(X).
%--------------------------------- Area of circle -----------------------

constants
	pi=3.14
predicates
	area(real)
clauses
	area(R):-A=R*R*pi,write("Area is ",A).
goal
	write("Enter radius "),readint(R),nl,
	area(R).
%---------------------------------- Max of two numbers ------------------------

predicates
	max(integer,integer)
clauses
	max(X,Y):-X>Y,write(X," is the maximum");
	Y>X,write(Y," is the maximum");write("Equal").
goal
	write("Enter first number: "),readint(X),nl,
	write("Enter second number: "),readint(Y),nl,
	max(X,Y).
%--------------------------------- Is char or not -------------------------------

predicates
	check(char)
clauses
	check(X):-X>='a',X<='z',write("Small letter");
	X>='A',X<='Z',write("Capital letter");
	write("Not letter").
goal
	write("Enter character\n"),readchar(X),write(X),nl, check(X).
%-------------------------------- Third digit ------------------------------

predicate
	third(integer)
clauses
	third(X):-Z=X div 100 mod 10,write(Z).
goal
	write("Enter number"),nl,readint(X),nl,third(X).
%-------------------------------- Compound data object -----------------------
domains
	int=integer
	birthday=date(symbol,int,int)
predicates  
	person(symbol,birthday)
clauses
	person("Amr",date("Nov",12,2017)).
goal
	person("Amr",X),write(x),nl,
	person("Amr",date(M,D,Y)),write("Month: ",M,"\nDay: ",D,"\nYear: ",Y).
%-------------------------------- cut! ----------------------------------

predicates
	num(integer)
clauses
	num(5):-!.
	num(7).
	num(10).
%--------------------------------------------------------------------------

predicates
	num(integer)
	letter(char)
	print(integer,char)
clauses
	num(10).
	num(20).
	letter('a').
	letter('b').
	print(X,Y):-num(X),letter(Y).
%------------------------------------------------------------------------

predicates
	num(integer)
	letter(char)
	print(integer,char)
clauses
	num(10).
	num(20).
	letter('a').
	letter('b').
	print(X,Y):-num(X),!,letter(Y).
%------------------------------------------------------------------------

predicates
	num(integer)
	letter(char)
	print(integer,char)
clauses
	num(10).
	num(20).
	letter('a').
	letter('b').
	print(X,Y):-num(X),letter(Y),!.
%-----------------------------------------------------------------------

predicates
	min(integer,integer)
clauses
	min(X,Z):-X>5,!,Z=1.
	min(X,Z):-X>10,Z=10.
goal
	min(11,Z),write(Z).

  