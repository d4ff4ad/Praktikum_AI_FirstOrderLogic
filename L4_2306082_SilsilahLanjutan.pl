ortu(david, john).
ortu(amy, john).
ortu(jack, ray).
ortu(jack, susan).
ortu(karen, ray).
ortu(karen, susan).
ortu(john, peter).
ortu(susan, peter).
ortu(john, mary).
ortu(susan, mary).

lakilaki(david).
lakilaki(jack).
lakilaki(john).
lakilaki(ray).
lakilaki(peter).
perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).


suami_istri(david,amy).
suami_istri(jack,karen).
suami_istri(john,susan).


is_ayah(X,Y) :- lakilaki(X),ortu(X,Y).
is_ibu(X,Y) :- perempuan(X),ortu(X,Y).
is_anak(X,Y) :- ortu(Y,X).
is_kakek(X, Y) :- lakilaki(X),ortu(X, Z), ortu(Z, Y).
is_nenek(X, Y) :- perempuan(X),ortu(X, Z), ortu(Z, Y).
is_saudara(X, Y) :- ortu(Z, X), ortu(Z, Y), X \= Y.
is_paman(X, Y) :- lakilaki(X), is_saudara(X, Z), ortu(Z, Y).
is_bibi(X, Y) :- perempuan(X), is_saudara(X, Z), ortu(Z, Y).
is_cucu(X,Y) :- is_kakek(Y,X).
is_cucu(X,Y) :- is_nenek(Y,X).
is_suami(X,Y) :- suami_istri(X,Y),lakilaki(X).
is_istri(X,Y) :- suami_istri(X,Y), perempuan(Y).
