talkative(_,5).
talkative(_,6).
talkative(_,7).
talkative(_,8).
talkative(_,9).
talkative(_,10).

alone(_,10).
alone(_,9).
alone(_,8).
alone(_,7).

alone_like(_,10).
alone_like(_,9).
alone_like(_,8).
alone_like(_,7).

quick(_,10).
quick(_,9).
quick(_,8).
quick(_,7).

answered(_,yes).

handful_people(_,1).
handful_people(_,2).
handful_people(_,3).
handful_people(_,4).
handful_people(_,5).

spends_time(_,6).
spends_time(_,7).
spends_time(_,8).
spends_time(_,9).
spends_time(_,10).

negative(_,8).
negative(_,9).
negative(_,10).

pressured(_,10).
pressured(_,9).
pressured(_,8).
pressured(_,7).
pressured(_,6).

often_lies(_,10).
often_lies(_,9).
often_lies(_,8).
often_lies(_,7).
often_lies(_,6).
often_lies(_,5).

excellent(_,10).
excellent(_,9).
average(_,8).
average(_,7).
average(_,6).

respectful(_,10).
respectful(_,9).
respectful(_,8).
respectful(_,7).
respectful(_,6).

often_broke_rules(_,10).
often_broke_rules(_,9).
often_broke_rules(_,8).

procrastinate(_,10).
procrastinate(_,9).
procrastinate(_,8).
procrastinate(_,7).
procrastinate(_,6).

repeative(_,10).
repeative(_,9).
repeative(_,8).
repeative(_,7).
repeative(_,6).
repeative(_,5).

regretful(_,10).
regretful(_,5).
regretful(_,9).
regretful(_,7).
regretful(_,6).

patient(_,10).
patient(_,9).
patient(_,8).
patient(_,7).
patient(_,6).

scared(_,10).
scared(_,9).
scared(_,8).
scared(_,7).

independent(_,10).
independent(_,9).
independent(_,8).
independent(_,7).

failure(_,10).
failure(_,9).
failure(_,8).
failure(_,7).




start() :-
	format("~n~nWelcome!!! ~n"),
	format("~nEXPERT COUNSELOR ~n"),
	format("Dr. Stranger V.1~n ~n"),
	format("You will be asked a series of questions to determine your~n"),
	format("emotional and mental health. These questions may vary : ~n"),
	format("  (1) YES or NO questions where you must type 'yes' or 'no'~n"),
	format("  (2) A ranged question (1 to 10) ~n"),
	format("       (2.1) 1 being the lowest~n"),
	format("       (2.2) 10 being the highest~n~n~n"),
	format("In answering, please be as honest as possible  ~n"),
	format("so we can avoid any confusions (^w^) ~n~n~n"),
	format("What is your name? ~n"),
	read(NAME),
	format("LET'S BEGIN ! ! ! ~n~n"),
	questions(NAME).

questions(NAME) :-
	format("~nFrom a range of 1 to 10 ~nHow often do you talk?~n"),
	read(Q1),

	format("~nFrom a range of 1 to 10~nHow often are you alone?~n"),
	read(Q2_a),
	(
	    not(alone(NAME,Q2_a));
	    format("~nBe honest with me ~w,~nFrom a range of 1 to 10~n how do you like being alone?~n",[NAME]),
	    read(Q2_b),
	    (
		alone_like(NAME,Q2_b);
		format("~n~w... Are you being bullied?~n",[NAME]),
	        read(Q2_c),
		format("Sorry... Let's continue~n")
	    )
	),

	format("~n~w, would like to be alone if you had the chance?~n", [NAME]),
	read(Q3),

	format("~n~w do you hate Noise?~n", [NAME]),
	read(Q4_a),
	(
	    not(answered(NAME,Q4_a));
	    format("~nFrom a range of 1 to 10, how many people are you with if you are in one?~n"),
	    read(Q4_b)
	),

	format("~nAre you currently living with your parents, ~w?~n", [NAME]),
	read(Q5_a),
        (
	    not(answered(NAME,Q5_a));
	    (
	    format("~nFrom a range of 1 to 10~nHow often do you spend time with them?~n"),
	    read(Q5_b),
	    format("~nDo you hate being bothered by them?~n"),
	    read(Q5_c),
	    format("~nFrom 1 to 10~n would you say you are scared of them?~n"),
	    read(Q5_d)
	    )
	),


	format("~nDo you live with your siblings or relatives? ~n"),
	read(Q7_a),
	(
	    not(answered(NAME,Q7_a));
	    (
	    format("~nFrom a range of 1 to 10,~nhow often do youn spend time with them?~n"),
	    read(Q7_b),
	    format("~nDo you hate being bothered by them?~n"),
	    read(Q7_c)
	    )
	),

	format("~nFrom a range of 1 to 10, ~nhow often do you spend time with your friends? ~n"),
	read(Q9),

	format("~nFrom a range of 1 to 10, ~nhow negative are you?~n"),
	read(Q6_a),
	(
	    (
	        not(negative(NAME,Q6_a)),
	        format("~nDo you show them how sad you are?~n"),
	        read(Q6_c)
	    );
	    format("~nDo you show them how negative you are?~n"),
	    read(Q6_b)
	),

	format("~nFrom a range of 1 to 10, ~nHow pressured are you? ~n"),
	read(Q8_a),

	format("~nFrom a range of 1 to 10, ~nhow often do you lie?~n "),
	read(Q8_b),

	format("~nHow can you rate your reaction time from 1 to 10?~n"),
	read(Q10),

	format("~nLets talk about school~nWhat is your rating of your grade from 1 to 10?~n"),
	read(Q11),
	(
	    not(doing_bad_school(NAME,Q11));
	    format("~nFrom 1 to 10~nhow do you often seek help?~n"),
	    read(Q11_b)
	),

	format("~nWould you consider yourself to procrastinate?~n"),
	read(Q12_a),
	(
	    not(answered(NAME,Q12_a));
	    (
		format("~nFrom a range of 1 to 10,~nHow often?~n"),
		read(Q12_b),
		(
		    not(procrastinate(NAME,Q12_b));
		    format("~nFrom a range of 1 to 10,~nHow much do you regret procrastinating?~n"),
		    read(Q12_c),
		    (
			regretful(NAME,Q12_c);
			format("~nFrom a range of 1 to 10~nHow impatient are you?~n"),
			read(Q12_d)
		    )

		),
		(
		    procrastinate(NAME,Q12_b);
		    format("~nFrom a range of 1 to 10, how lazy are you?"),
		    read(Q12_c)
		)
	    )
	),

	format("~nMost of us broke a rule at some point~ndo you believe you had broke a rule once?~n"),
	read(Q13_a),
	(
	    (
	        not(answered(NAME,Q13_a));
	        (
	        format("~nHow can you rate from 1 to 10 how often you do it?~n"),
	        read(Q13_b),
	        format("~nWhat about listening to your teachers or superiors?~n What rate would you give yourself from 1 to 10?~n"),
	        read(Q13_c)
	        )
	    ),
	    (
	        answered(NAME,Q13_a);
	        (
	        format("~nAre you seen as a good kid, ~w?~n",[NAME]),
	        read(Q13_d)
	        )
	    )
	),

	format("~nFrom a range of 1 to 10~nCan you say you are scared of your teachers/superiots?~n"),
	read(Q15),

	format("~nWhen you get Home, do you seek/find someone to talk to?~n"),
	read(Q16),

	format("~nFrom a range of 1 to 10, ~nHow often do you fail?~n"),
	read(Q17_a),
	(
	    (
	       alone(NAME,Q2_a),fails(NAME,Q17_a)
	    );
	    format("~nIf you are alone, do you think you will still fail?~n"),
	    read(Q17_b)
	),

	format("~nDo you have bad habits such as overswearing, smoking and the sort?~n"),
	read(Q14_a),
	(
	    not(answered(NAME,Q14_a));
	    (
	    format("~nFrom a range of 1 to 10~nHow often do you do these?~n"),
	    read(Q14_b),
	    format("~nDo you believe this is the solution to your problems?~n"),
	    read(Q14_c)
	    )
	),



	/*
	format(""),
	read(),
	*/
	format("~n~nCONCLUSIONS~n"),
	(
	    (
	    is_lonely(NAME, Q1,Q2_a,Q2_b, Q3, Q4_a, Q4_b, Q5_a, Q5_b, Q6_a, Q6_b),
	    format("   * I am sorry to say this ~w but it seems you are lonely~n", [NAME])
	    ); 1=1
	),
	(
	    (
	    is_depressed(NAME,Q2_b,Q5_a,Q5_b,Q6_c, Q7_a, Q7_b,Q8_a, Q8_b),
	    format("   * I am think ~w you are feeling depressed~n", [NAME])
	    ); 1=1
	),
	(
	    (
	    is_distracted(NAME,Q5_a,Q5_b, Q9, Q10, Q11,Q2_a,Q2_b,Q2_c),
	    format("   * Most likely you are distracted or something is bothering you~n", [NAME])
	    ); 1=1
	),
	(
	    (
	    is_pressured(NAME,Q5_a,Q5_b,Q5_c,Q7_a,Q7_b,Q7_c,Q9,Q12_a,Q12_b,Q13_a,Q13_b,Q13_c,Q14_a,Q14_b,Q14_c),
	    format("   * I think you are being pressured and given a lot to think about ~w~n", [NAME])
	    ); 1=1
	),
	(
	    (
	    is_overstressed(NAME,Q5_a,Q5_b,Q5_d,Q15,Q7_a,Q7_b,Q13_d,Q12_a,Q12_b,Q12_c,Q12_d,Q11),
	    format("   * I think you need rest since you seem to be stressed ~w~n",[NAME])
	    ); 1=1
	),
	(
	    (
	    is_overdependent(NAME,Q5_a,Q5_b,Q7_a,Q7_b,Q9,Q11,Q17_a,Q17_b,Q2_a,Q16,Q11_b),
	    format("   * ~w, you are being too dependable. You always seem to lean on someone.~n",[NAME])
	    );1=1
	),
	(
	    not(is_lonely(NAME, Q1,Q2_a,Q2_b, Q3, Q4_a, Q4_b, Q5_a, Q5_b, Q6_a, Q6_b)),
	    not(is_depressed(NAME,Q2_b,Q5_a,Q5_b,Q6_c, Q7_a, Q7_b,Q8_a, Q8_b)),
	    not(is_distracted(NAME,Q5_a,Q5_b, Q9, Q10, Q11,Q2_a,Q2_b,Q2_c)),
	    not(is_pressured(NAME,Q5_a,Q5_b,Q5_c,Q7_a,Q7_b,Q7_c,Q9,Q12_a,Q12_b,Q13_a,Q13_b,Q13_c,Q14_a,Q14_b,Q14_c)),
	    not(is_overdependent(NAME,Q5_a,Q5_b,Q7_a,Q7_b,Q9,Q11,Q17_a,Q17_b,Q2_a,Q16,Q11_b)),
	    not(is_overstressed(NAME,Q5_a,Q5_b,Q5_d,Q15,Q7_a,Q7_b,Q13_d,Q12_a,Q12_b,Q12_c,Q12_d,Q11)),
	    format("   * What you are facing right now ~w is beyond me. I suggest you~n", [NAME]),
	    format("	 seek a counselor "),
	    (
		not(have_parents(NAME,Q5_a));
		format("and talk to your parents. This is always the best way")
	    )

	).

is_lonely(NAME, Q1,Q2_a,Q2_b, Q3, Q4_a, Q4_b, Q5_a, Q5_b, Q6_a, Q6_b) :-
	dont_spend_time_parents(NAME,Q5_a,Q5_b),
	not(talkative(NAME,Q1)),
	is_alone(NAME,Q2_a, Q2_b),
	want_alone_time(NAME, Q3),
	hate_noise(NAME,Q4_a, Q4_b),
	is_negative(NAME,Q6_a,Q6_b).

is_depressed(NAME,Q2_b,Q5_a,Q5_b,Q6_c, Q7_a, Q7_b,Q8_a, Q8_b) :-
	dont_spend_time_parents(NAME,Q5_a,Q5_b),
	not(alone_like(NAME,Q2_b)),
	negative(NAME,Q6_c),
	dont_spend_time_siblings(NAME,Q7_a, Q7_b),
	is_pressured(NAME,Q6_c,Q8_a,Q8_b).

is_distracted(NAME,Q5_a,Q5_b, Q9, Q10, Q11,Q2_a,Q2_b,Q2_c) :-
	value_friends_over_family(NAME,Q5_a,Q5_b,Q9),
	slow(NAME,Q10),
	doing_bad_school(NAME,Q11),
	bullied(NAME, Q2_a,Q2_b, Q2_c).

is_pressured(NAME,Q5_a,Q5_b,Q5_c,Q7_a,Q7_b,Q7_c,Q9,Q12_a,Q12_b,Q13_a,Q13_b,Q13_c,Q14_a,Q14_b,Q14_c) :-
	bothered(NAME,Q5_a,Q5_b,Q5_c,Q7_a,Q7_b,Q7_c,Q9),
	procrastinating(NAME,Q12_a,Q12_b),
	break_rules(NAME, Q13_a,Q13_b,Q13_c),
	have_bad_habits(NAME,Q14_a,Q14_b,Q14_c).

is_overstressed(NAME,Q5_a,Q5_b,Q5_d,Q15,Q7_a,Q7_b,Q13_d,Q12_a,Q12_b,Q12_c,Q12_d,Q11) :-
	scared_of(NAME,parents,Q5_a,Q5_d),
	dont_spend_time_parents(NAME,Q5_a,Q5_b),
	scared_of(NAME,teachers,Q15),
	dont_spend_time_siblings(NAME,Q7_a,Q7_b),
	spend_time_with_friends(NAME,Q13_d),
	lazy(NAME,Q12_a,Q12_b,Q12_c,Q12_d),
	(
	    doing_bad_school(NAME,Q11);
	    average(NAME,Q11)
	).

is_overdependent(NAME,Q5_a,Q5_b,Q7_a,Q7_b,Q9,Q11,Q17_a,Q17_b,Q2_a,Q16,Q11_b) :-
	friends_over_others(NAME,Q5_a,Q5_b,Q7_a,Q7_b,Q9),
	(
	    not(doing_bad_school(NAME,Q11));
	    seek_help(NAME,Q11,Q11_b)
	),
	fails(NAME,Q17_b,Q2_a,Q17_a),
	need_someone(NAME,Q16).


lazy(NAME, Q1,Q2,Q3,Q4) :-
	procrastinating(NAME,Q1,Q2),
	(
	  (
	      not(regretful(NAME,Q3)),
              not(patient(NAME,Q4))
          );
	  (
	      patient(NAME,Q4)
	  )
	).

seek_help(NAME,Q1,Q2) :-
	doing_bad_school(NAME,Q1),
	need_someone(NAME,Q2).

need_someone(NAME,Q) :-
	answered(NAME,Q);
	not(independent(NAME,Q)).

procrastinating(NAME, Q1, Q2) :-
	procrastinate(NAME,Q2),
	answered(NAME,Q1).

break_rules(NAME,Q1,Q2,Q3) :-
	answered(NAME,Q1),
	often_broke_rules(NAME,Q2),
	not(respectful(NAME,Q3)).

is_alone(NAME, Q1,Q2) :-
	not(alone_like(NAME, Q2)),
	alone(NAME,Q1).

bullied(NAME, Q1,Q2,Q3) :-
	answered(NAME,Q3),
	is_alone(NAME,Q1,Q2).

want_alone_time(NAME,Q) :-
	answered(NAME,Q).

hate_noise(NAME, Q1,Q2) :-
	handful_people(NAME,Q2),
	answered(NAME,Q1).

have_parents(NAME, Q) :-
	answered(NAME, Q).

have_siblings(NAME,Q) :-
	answered(NAME, Q).

spend_time_with_parents(NAME, Q1, Q2) :-
	have_parents(NAME,Q1),
	spends_time(NAME,Q2).

dont_spend_time_parents(NAME,Q1,Q2) :-
	not(have_parents(NAME,Q1));
	not(spends_time(NAME,Q2)).

spend_time_with_siblings(NAME, Q1, Q2) :-
	have_siblings(NAME,Q1),
	spends_time(NAME,Q2).

dont_spend_time_siblings(NAME,Q1,Q2) :-
	not(have_siblings(NAME,Q1));
	not(spends_time(NAME,Q2)).

is_negative(NAME,Q1,Q2) :-
	answered(NAME,Q2),
	negative(NAME,Q1).

lies(NAME, Q) :-
	often_lies(NAME,Q).

is_pressured(NAME, Q1, Q2,Q3) :-
	lies(NAME,Q3),
	pressured(NAME,Q2),
	negative(NAME,Q1).

spend_time_with_friends(NAME,Q) :-
		spends_time(NAME,Q).

value_friends_over_family(NAME,Q1,Q2,Q3) :-
	(
		spend_time_with_parents(NAME,Q1,Q2);
		dont_spend_time_parents(NAME,Q1,Q2)
	),
	spend_time_with_friends(NAME,Q3),
	Q3 > Q2.

value_friends_over_siblings(NAME,Q1,Q2,Q3) :-
	(
		spend_time_with_siblings(NAME,Q1,Q2);
		dont_spend_time_siblings(NAME,Q1,Q2)
	),
	spend_time_with_friends(NAME,Q3),
	Q3 > Q2.

friends_over_others(NAME,Q1,Q2,Q3,Q4,Q5) :-
	value_friends_over_family(NAME,Q1,Q2,Q5),
	value_friends_over_siblings(NAME,Q3,Q4,Q5).

slow(NAME,Q) :-
	not(quick(NAME,Q)).

doing_bad_school(NAME,Q) :-
	not(average(NAME,Q)),
	not(excellent(NAME,Q)).

bothered_by_parents(NAME,Q1,Q2) :-
	answered(NAME,Q1),
	answered(NAME,Q2).

bothered_by_siblings(NAME,Q1,Q2) :-
	answered(NAME,Q1),
	answered(NAME,Q2).

bothered(NAME,Q1,Q2,Q3,Q4,Q5,Q6,Q7) :-
	bothered_by_parents(NAME,Q1,Q3),
	bothered_by_siblings(NAME,Q4,Q6),
	friends_over_others(NAME,Q1,Q2,Q4,Q5,Q7).

have_bad_habits(NAME,Q1,Q2,Q3) :-
	answered(NAME,Q1),
	repeative(NAME,Q2),
	answered(NAME,Q3).

scared_of(NAME,parents,Q,R) :-
	have_parents(NAME,Q),
	scared(NAME,R).

scared_of(NAME,teachers,R) :-
	scared(NAME,R).

fails(NAME,Q) :-
	failure(NAME,Q).

fails(NAME,Q1,Q2,Q3) :-
	answered(NAME,Q2),
	alone(NAME,Q3),
	independent(NAME,Q1).



