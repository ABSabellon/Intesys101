isChild(AGE):- AGE < 18.
isAdult(AGE):- AGE = 18.
isAdult(AGE):- AGE > 18.

begin():-
	write('Greetings!'),nl,
	write('Welcome to MD Expert System'),nl,
	write('You will be asked a couple of questions'),nl,
	write('about your patient, to identify'),nl,
	write(' if he/she has Appendicitis or Cholecystitis'),nl,
	write('Please Enter Patient Name'),
	read(NAME),
	write('Let us Start'),
	ask(NAME).

ask(name):-
	write('What is your age?'),nl,
	read(age),
	write('Does the patient experience pain?'),nl,
	read(ans1),
	write('You will be asked a couple of questions'),nl,
	write('about your patient, to identify'),nl,
	write(' if he/she has Appendicitis or Cholecystitis'),nl,
	write('Please Enter Patient Name').

hasPain(ans1):-
	pain(ans1).

symptomPain_appendicitis(X):-
	isProgressive(Y),
	isChildren(X),
	isShifting(Y),
	isLocalized(Y).

symptomPain_appendicitis(X):-
	isProgressive(Y),
	isAdult(X),
	isShifting(Y),
	isLocalized(Y).

symptomPain_appendicitis(X):-
	isProgressive(Y),
	isAdult(X),
	isLocalized(Y).

