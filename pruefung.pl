:-include('studenten.pl').
:-include('pruefungen.pl').

bestanden(Person, Pruefung) :-
  abgelegt(Person, Pruefung, Note, Versuch),
  Note =< 4.0,
  Versuch =< 3.

alle_bestanden(Person, []).
alle_bestanden(Person, [Head|Tail]) :-
  bestanden(Person, Head),
  alle_bestanden(Person, Tail).