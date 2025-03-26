anakIbu(andi).
anakIbu(budi).
anakIbu(cika).
anakIbu(dani).
anakIbu(emil).
not(anakIbu(fadil)).

sukaPermen(andi).
sukaPermen(budi).
sukaPermen(cika).
not(sukaPermen(dani)).
not(sukaPermen(emil)).

siapa_saja(X) :- anakIbu(X).
dapat_permen(X) :-anakIbu(X),sukaPermen(X).
dapat_uang(X) :- anakIbu(X),not(sukaPermen(X)).
tidakdapatapaapa(X) :-not(anakIbu(X)).

