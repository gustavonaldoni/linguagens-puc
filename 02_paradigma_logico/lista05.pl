%% EXERCICIO 01 %%
imprima([X])    :- write(X).
imprima([A|B])  :- imprima([A]),
    			   imprima(B).


%% EXERCICIO 02 %%
verificanota([X]) 	:- X >= 0,
    				 X < 30,
    				 write(X), write(' Reprovado').

verificanota([X]) 	:- X >= 30,
    				 X < 60,
    				 write(X), write(' Recuperação').

verificanota([X]) 	:- X >= 60,
    				 X < 100,
    				 write(X), write(' Aprovado').

verificanota([A|B]) :- verificanota([A]),
    				   verificanota(B).


%% EXERCICIO 03 %%
vogal(a).
vogal(e).
vogal(i).
vogal(o).
vogal(u).

contavogal([], 0).

contavogal([A|B], Contador) 	:- vogal(A),
    						   	   contavogal(B, Contador1),
    						   	   Contador is Contador1 + 1.

contavogal([A|B], Contador) 	:- not(vogal(A)),
    						   	   contavogal(B, Contador).
    				

%% EXERCICIO 04 %%
insere([], X, X).
insere([X | Y], Z, [X | W]) :- insere(Y, Z, W).

extenso(1, um).
extenso(2, dois).
extenso(3, tres).
extenso(4, quatro).
extenso(5, cinco).
extenso(6, seis).
extenso(7, sete).
extenso(8, oito).
extenso(9, nove).
extenso(10, dez).

traduza([X], ListaDestino) 		:- extenso(X, R),
    							   insere([], [R], ListaDestino1),
    							   insere([], ListaDestino, ListaDestino1).

traduza([A|B], ListaDestino) 	:- traduza([A], ListaDestino),
    							   traduza(B, ListaDestino).
