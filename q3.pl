exp(Base,Exponent,Result):-   
  Exponent =:= 1,
  write(Result),nl;   

  Base > 0,
  Exponent > 0,
  ExponentDec is Exponent - 1,
  ResultRecur is Base * Exponent,
  exp(Base,ExponentDec,ResultRecur).
  

exp(Base,Exponent,Result):-
  Base =:= 0,
  Result = 0.
