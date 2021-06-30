exp(0,Exponent,0).
exp(Base,0,1).

exp(Base,Exponent,Result):-
  Result is exp(Base,Exponent,Result,N)


exp(Base,Exponent,Result,N) :-   
  Exponent =:= 0, Result = 1;


  Exp1 > 0, Exp1 is Exponent -1,
  Result1 is Base * Exponent.
  exp(Base,Exp1,Result1),
  




  


