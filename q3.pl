exp(_,0,1).
exp(0,_,0).
exp(Base,Exponent,Result):-
  Base =\= 0,
  Exponent > 0,
  Exp1 is Exponent - 1,
  exp(Base,Exp1,R1),
  Result is R1*Base.




  
  







