male(john).
male(peter).
male(tom).
female(joan).
female(mary).
female(patty).
female(jenny).
mother(joan,mary).
mother(joan,tom).
mother(patty,jenny).
father(peter,mary).
father(john,jenny).  %note we are assuming genders of patty and john, parent(x,jenny) would work too
father(peter,tom).
parent(X):-
  mother(X,_Child);
  father(X,_Child).		
parentOf(Parent,Child):-
  mother(Parent,Child);
  father(Parent,Child).	
sister(X,Y) :-
  female(X),
  parentOf(Z,Y),
  parentOf(Z,X),
  X \= Y.
  
   		  
  
  