cat(arturo).
cat(blackie).
dog(elvis).
dog(freya).
animal(X) :-
    (cat(X) ; dog(X)).