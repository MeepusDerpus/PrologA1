%We assume the sum of an empty list is 0 and not null
sum([],0).
sum([Head | Tail], Result) :-
    sum(Tail,X), 
    Result is Head + X.

%Works but not exact to spec
sumlist([],Number, Result):-
  Result is Number. 

sumlist([Head | Tail],Number,Result):-
  N1 = Number + Head, 
  sumlist(Tail, N1, Result). 

%mathematically product of empty set is 1
product([],1).
product([Head | Tail],Result):-    
    product(Tail,Y), 
    Result is Head * Y.



productlist([],Number,Result):-
  Result is Number.
  

productlist([Head | Tail] ,Number,Result):-
  productlist(Tail,Number,Y), 
  Result is Head * Y.

%cinoare wuth copy for edge cases