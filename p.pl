predicates
op(integer,integer,char)
clauses
op(X,Y,'+'):-Z=X+Y,write(X," + ",Y," = ",Z),!.
op(X,Y,'-'):-Z=X-Y,write(X," - ",Y," = ",Z),!.
op(X,Y,'*'):-Z=X*Y,write(X," * ",Y," = ",Z),!.
op(X,Y,'/'):-Z=X/Y,write(X," / ",Y," = ",Z),!.
op(X,Y,'%'):-Z=X mod Y,write(X," % ",Y," = ",Z),!.
op(_,_,O):-write("Invalid operation '",O,"'").
goal
write("X = "),readint(X),
write("Y = "),readint(Y),
write("operation (+,-,*,/,%): "),
readchar(O),write(O),
op(X,Y,O).