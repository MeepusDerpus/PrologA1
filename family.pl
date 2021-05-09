parent(tom,bob).	%Pam is the parent of bob
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
male(tom).		%Tom is male
male(bob).
male(jim).
female(pam).		%Pam is female
female(liz).
female(pat).
female(ann).
mother(X,Y) :-		%X is the mother of Y if
  parent(X,Y),
  female(X).
grandparent(X,Z) :-
  parent(X,Y),
  parent(Y,Z).
sister(X,Y) :-
  parent(Z,X),
  parent(Z,Y),		%X and Y share the same instance of Z
  female(X),
  X\=Y.			%X is not an instance of Y
ancestor(X,Z) :-
  parent(X,Z).
ancestor(X,Z) :-
  parent(X,Y),
  ancestor(Y,Z).
