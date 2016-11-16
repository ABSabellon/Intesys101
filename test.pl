isChild(AGE):- AGE < 18.
isAdult(AGE):- AGE = 18.
isAdult(AGE):- AGE > 18.

hasPain(true).

begin():-
	write('Greetings!'),nl,
	write('Welcome to MD Expert System'),nl,
	write('You will be asked a couple of questions'),nl,
	write('about your patient, to identify'),nl,
	write(' if he/she has Appendicitis or Cholecystitis'),nl,
	write('Please Enter Patient Name: '),
	read(Name),
	write('Let us Start'),nl,
	ask(Name).

ask(Name):-
	write('What is your age?'),nl,
	read(Name, Age),
	write('Does the patient experience pain?'),nl,
	read(Name, Ans1),
	write('Is the pain progressive?'),nl,
	read(Name, Ans2),
	write('Is the pain shifting?'),nl,
	read(Name, Ans3),
	write('Is the pain localized?'),nl,
	read(Name, Ans4),

	write('Test Results'),
	(
	    (
	    hasPain(Name,Ans1),
	    write('lelele', [NAME])
	    ); 1=1
	),
	(
	    (
	    symptomPain_appendicitis(Name, Ans2, Age, Ans3, Ans4),
	    write('lalala ', [NAME])
	    ); 1=1
	),
	(
	    (
	    symptomPain_appendicitis(Name, Ans2, Age, Ans4),
	    write('lolololo ', [NAME])
	    ); 1=1
	).

hasPain(Name, Ans1):-
	pain(Name, Ans1).

symptomPain_appendicitis(Name, Ans2, Age, Ans3, Ans4):-
	isProgressive(Name, Ans2),
	isChild(Name, Age),
	isShifting(Name, Ans3),
	isLocalized(Name, Ans4).

symptomPain_appendicitis(Name, Ans2, Age, Ans3, Ans4):-
	isProgressive(Name, Ans2),
	isAdult(Name, Age),
	isShifting(Name, Ans3),
	isLocalized(Name, Ans4).

symptomPain_appendicitis(Name, Ans2, Age, Ans4):-
	isProgressive(Name, Ans2),
	isAdult(Name, Age),
	isLocalized(Name, Ans4).







