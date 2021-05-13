%Below we have clauses defining the gender of our 
male('John').    %Assumption of male
male('Peter').
male('Tom').
female('Joan').
female('Mary'). 
female('Patty'). %Assumption of female
female('Jenny').

%Below we have parent child relationship clauses of our people atoms
mother('Joan','Mary').
mother('Joan','Tom').
mother('Patty','Jenny').
father('Peter','Mary').
father('John','Jenny').  %note we are assuming genders of patty and john.
father('Peter','Tom').



parent(X):-
  mother(X,_Child);
  father(X,_Child).	

parentOf(Parent,Child):-

  mother(Parent,Child);
  father(Parent,Child).


sister(X,Y) :-
  parentOf(Z,X),
  parentOf(Z,Y),
  female(X),
  X \= Y,!.   		  
  
  