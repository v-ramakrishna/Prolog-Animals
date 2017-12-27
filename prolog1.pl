%
% Name        : prolog1.pl
% Author      : Vijay Ramakrishna
% Date        : 02016.12.11
% Description : This file contains two different items. First, 
% this file contains a database, animals.pl with information about animals
% and their classifications. The second part of this file 
% contains 8 different test cases for the database, to ensure 
% that the databse is acting as it should be.
%


% Part Zero

%
% animals.pl is a knowledge base
%

reptile(snake).
reptile(crocodile).
reptile(lizard).

amphibian(salamander).
amphibian(frog).

bird(raptor).
bird(canary).

mammal(primate).
mammal(marsupial).

venomous(snake).
venomous(lizard).
venomous(frog).

poisonousreptile(X) :- reptile(X), venomous(X).
poisonousamphibian(X) :- amphibian(X), venomous(X).
coldblooded(X) :- reptile(X); amphibian(X).
warmblooded(X) :- mammal(X); bird(X).

% Part One

% [0] | ?- warmblooded(frog).
% no
%
% [1] | ?- coldblooded(frog).
% yes
%
% [2] | ?- listing(poisonousreptile).
% poisonousreptile(A) :-
% 	reptile(A),
%	venomous(A).
% yes
%
% [3] | ?- poisonousreptile(snake).
% yes
%
% [4] | ?- poisonousreptile(crocodile).
% no
%
% [5] | ?- poisonousamphibian(frog).
% yes
%
% [6] | ?- warmblooded(marsupial).
% yes
%
% [7] | ?- listing(warmblooded).
% warmblooded(A) :-
%	(   mammal(A)
%	;   bird(A)
%	).
% yes