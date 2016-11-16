qPain:- write('Patient name: '), nl, read(X),
	write('Does the patient experience pain?'), nl,
	read(Input1), nl, go1(X,Input1).

go1(X, Y):- (Y == y;Y == yes) -> assert(pain(X)),
	  write('Does the pain subside?'),
	  read(Input2), nl, go2(X,Input2).

go2(X, Y):- ((Y == n; Y == no) -> assert(doesNotSubside(X, pain))),
	assert(scaleIncreases(X, pain),
	isProgressive(X)).

hasPain(X):- pain(X).

isProgessive(X):- doesNotSubside(X, pain), scaleIncreases(X, pain), hasPain(X),
	write('The pain is progessive').




