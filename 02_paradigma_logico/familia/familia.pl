homem(antonio).
homem(fernando).
homem(carlos).
homem(gustavo).
homem(adriano).
homem(marcio).

mulher(luciene).
mulher(terezinha).
mulher(rosangela).
mulher(ana).
mulher(leticia).

/* Antonio eh pai de ... */
pai(antonio, carlos).
pai(antonio, ana).

pai(fernando, rosangela).

/* Carlos eh pai de ... */
pai(carlos, gustavo).
pai(carlos, adriano).

pai(marcio, leticia).

/* Luciene eh mae de ... */
mae(luciene, carlos).
mae(luciene, ana).

mae(terezinha, rosangela).

/* Rosangela eh mae de ... */
mae(rosangela, gustavo).
mae(rosangela, adriano).

mae(ana, leticia).

/* ----- RELAÇÕES FAMILIARES -----  */""
filho(X, Y) :- (pai(Y, X); mae(Y, X)), homem(X).
filha(X, Y) :- (pai(Y, X); mae(Y, X)), mulher(X).

irmao(X, Y) :- pai(P, X), pai(P, Y),
               mae(M, X), mae(M, Y),
               homem(X).

irma(X, Y) :- pai(P, X), pai(P, Y),
              mae(M, X), mae(M, Y),
              mulher(X).

avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (filho(Z, X); filha(Z, X)).