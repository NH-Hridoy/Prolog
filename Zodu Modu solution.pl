/* Facts Are*/
object(nobabjada).
object(karim).
object(nosimon).
object(zodu).
object(modu).
object(kodu).
object(votvoti).
object(candergari).

parent_of(karim,nobabjada).
parent_of(nosimon,nobabjada).
parent_of(zodu,karim).
parent_of(modu,karim).
parent_of(kodu,karim).
parent_of(votvoti,nosimon).
parent_of(candergari,nosimon).

sibling_of(karim,nosimon).
sibling_of(nosimon,karim).
sibling_of(zodu,modu).
sibling_of(zodu,kodu).
sibling_of(modu,zodu).
sibling_of(modu,kodu).
sibling_of(kodu,modu).
sibling_of(kodu,zodu).

/* Rules */
parent(X,Y):- object(X), parent_of(X,Y).
siblings(X,Y):- object(X),object(Y), sibling_of(X,Y).

/*quary*/
%parent(karim,votvoti).
%parent(kodu,X).
%parent(X,nobabjada).
%siblings(X,Y).
