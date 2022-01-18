predicates
	person(symbol)
	car(symbol)
	like(symbol,symbol)
	forSale(symbol)
	can_buy(symbol,symbol)
clauses
	person(mohamed).
	person(samy).
	person(samir).
	person(osama).
	car(lemon).
	car(hot_rod).
	like(mohamed,hot_rod).
	like(samy,pizza).
	like(samir,tennis).
	like(osama,tennis).
	forSale(pizza).
	forSale(lemon).
	forSale(hot_rod).
	can_buy(X,Y):-person(X),car(Y),forSale(Y),like(X,Y).
%---------------------------------------------------------------------

predicates
	male(symbol)
	female(symbol)
	parent(symbol,symbol)
	grand_parent(symbol,symbol)
clauses
	male(ayman).
	male(blal).
	female(fatma).
	female(samr).
	parent(ayman,blal).
	parent(samr,blal).
	parent(blal,fatma).
	grand_parent(X,Y):-parent(X,Z),parent(Z,Y).
%---------------------------------------------------------------------

predicates
	sum(integer,integer)
	sub(integer,integer)
	mul(integer,integer)
	divide(integer,integer)
	modulus(integer,integer)
	division(integer,integer)
clauses
	sum(X,Y):-Z=X+Y,write("Sum is ",Z).
	sub(X,Y):-Z=X-Y,write("Sub is ",Z).
	mul(X,Y):-Z=X*Y,write("Mul is ",Z).
	divide(X,Y):-Z=X/Y,write("Divide is ",Z).
	modulus(X,Y):-Z=X mod Y,write("Mod is ",Z).
	division(X,Y):-Z=X div Y,write("Div is ",Z).
goal
	write("Enter first number: "),readint(X),nl,
	write("Enter second number: "),readint(Y),nl,
	sum(X,Y),nl,sub(X,Y),nl,mul(X,Y),nl,divide(X,Y)
	,nl,modulus(X,Y),nl,division(X,Y),nl.
	


