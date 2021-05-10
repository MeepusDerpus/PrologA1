exp(Base,Exponent,Result):-
  Base > 0,
  Exponent > 0,
  ExponentDec is Exponent - 1,
  ResultRecur is Base * ExponentDec,
  exp(Base,ExponentDec,ResultRecur).
exp(Base,Exponent,Result):-
  Exponent =:= 0,
  Result = 1;
  Base =:= 0,
  Result = 0.
