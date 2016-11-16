isChild(AGE):- AGE < 18.
isAdult(AGE):- AGE = 18.
isAdult(AGE):- AGE > 18.

begin():-
	write('Greetings!'),nl,
	write('Welcome to MD Expert System'),nl,
	write('You will be asked a couple of questions'),nl,
	write('about your patient, to identify'),nl,
	write(' if he/she has Appendicitis or Cholecystitis'),nl,
	write('Please Enter Patient Name: '),
	read(name),
	write('Let us Start'),
	ask(name).

ask(name):-
	write('What is your age?'),nl,
	read(name, age),
	write('Does the patient experience pain?'),nl,
	read(name, ans1),
	write('Is the pain progressive?'),nl,
	read(name, ans2),
	write('Is the pain shifting?'),nl,
	read(name, ans3),
	write('Is the pain localized?'),nl,
	read(name, ans4).

hasPain(name, ans1):-
	pain(ans1).

symptomPain_appendicitis(name, ans2, age, ans3, ans4):-
	isProgressive(ans2),
	isChild(age),
	isShifting(ans3),
	isLocalized(ans4).

symptomPain_appendicitis(ans2, age, ans3, ans4):-
	isProgressive(ans2),
	isAdult(age),
	isShifting(ans3),
	isLocalized(ans4).

symptomPain_appendicitis(ans2, age, ans4):-
	isProgressive(ans2),
	isAdult(age),
	isLocalized(ans4).







