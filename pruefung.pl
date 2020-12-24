pruefung(logik, "Logik").
pruefung(mathe, "Mathematik II").
pruefung(rechnernetze, "Rechnernetze").

/* abgelegt/4 (name, pruefung, note, versuch) */
abgelegt(bob, logik, 1.0, 1).
abgelegt(bob, mathe, 1.3, 1).
abgelegt(bob, rechnernetze, 5.0, 1).

bestanden(Person, Pruefung) :-
  abgelegt(Person, Pruefung, Note, Versuch),
  Note =< 4.0,
  Versuch =< 3.

alle_bestanden(Person, []).
alle_bestanden(Person, [Head|Tail]) :-
  bestanden(Person, Head),
  alle_bestanden(Person, Tail).