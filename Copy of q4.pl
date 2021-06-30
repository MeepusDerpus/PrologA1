sum([],0).

sum([Head | Tail], Result) :-
    sum(Tail,X), 
    Result is Head + X.

product([],1).
product([Head | Tail],Result):-
    product(Tail,Y), 
    Result is Head * Y.

/*
(b) Without using the predicate sum you defined in (a), 
write a
 sumlist(List,Number,Result) that calculates
 the sum of the elements of List and of 
the integer Number, and returns the result in Result. 
Such procedure should iteratively 
add the first element of the list to the integer Number,
 and transfer the content of Number
into the result once the list is empty. 
*/
%recursion 
sumlist([],Number, Result):-
  Result = Number. 

sumlist([Head | Tail],Number,Result):-
  N1 is Number + Head, 
  sumlist(Tail, N1, Result). 

/*
%iteration 
list_length([],0).
list_length([_|TAIL],N) :- list_length(TAIL,N1),
N is N1 + 1. 

*/

/*
(d) Write a procedure productlist(List,Number,Result) 
that calculates the product of 
the elements of a list in the same way as in (b) above.
*/
productlist([], Number, 1).
productlist(List, 0, 0).

productlist(List,Number,Result):-
  N1 = Number * Head, 
  productlist(Tail, N1, Result).   
  

/*

Question 5 [6]
Write a procedure order(List,Result)
 has a list List as input and returns a list Result of 
ordered pairs such that:
• the 1st e of is the position of the pair in the list,
• the 2nd e of is the element from List in the corresponding position.
For example, if List = [a, b, c, d], the procedure order(List,Result)outputs the list:
Result = [(1,a), (2,b), (3,c), (4,d)].

*/

indexOf([Element|_], Element, 1):- !.
indexOf([_|Tail], Element, Index):-
  indexOf(Tail, Element, Index1),
  !,
  Index = Index1+1.
 
append( [], X, X).                                            % (* your 2nd line *)
append( [X | Y], Z, [X | W]) :- 
append( Y, Z, W).    % (* your first line *) 


order([], []). 
order([Head | Tail],[X | Y]):-
  indexOf([Head | Tail] , Head, Index), 
  
  R1 = [Index, Head],
  append([X | Y] , R1, R2),
  order(Tail, R2).  