/*
Write a procedure order(List,Result) that has a list List as input and returns a list Result of
ordered pairs such that:

• the first element of the ordered pair is the position of the pair in the list, and
• the second element of the ordered pair is the element from List in the corresponding position.

For example, if List = [a, b, c, d], the procedure order(List,Result)outputs the list:
Result = [(1,a), (2,b), (3,c), (4,d)].
*/


/*
order([],[]). 
order([Head | Tail],[X | Y]):-    

  
  %put if statement here else count length of X

  X = ( I | Head),
  length(Tail, I),%write(X),nl,

  order(Tail,Y).
*/
order([],[]). 
order([Head | Tail],[X | Y]):-  
  order2(1,[Head | Tail],[X | Y]).  


order2(_,[],[]). 
order2(N,[Head | Tail],[X | Y]):-    
  
  X = ( N | Head),
  N1 is N + 1,
  order2(N1,Tail,Y),!.
  

  

  

