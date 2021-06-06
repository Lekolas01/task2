:- modeh(1,adult(+age,+workclass,+education_num,+occupation,+race,+sex,+hours_per_week,+country)).


%:- set(clauselength, 6).
:- set(minpos, 5).
:- set(minacc, 0.85).
%:- set(noise,10).
:- set(verbosity,0).
%:- set(evalfn,laplace).
%:- set(search,heuristic).

lteq(X,Y):-
        number(X), number(Y),
        X =< Y.
lteq(X,X):-
        number(X).

gteq(X,Y):-
        number(X), number(Y),
        X >= Y.
gteq(X,X):-
        number(X).


lt(X,Y):-
        number(X), number(Y),
        X < Y.
lt(X,X):-
        number(X).

gt(X,Y):-
        number(X), number(Y),
        X > Y.
gt(X,X):-
        number(X).

:- determination(adult/8,lt/2).
:- determination(adult/8,gt/2).
:- determination(adult/8,lteq/2).
:- determination(adult/8,gteq/2).
:- determination(adult/8,'='/2).

:- modeb(1,gteq(+age,#age)).
:- modeb(1,lteq(+age,#age)).
:- modeb(1,gteq(+education_num,#education_num)).
:- modeb(1,lteq(+education_num,#education_num)).
:- modeb(1,gteq(+hours_per_week,#hours_per_week)).
:- modeb(1,lteq(+hours_per_week,#hours_per_week)).

:- modeb(1,gt(+age,#age)).
:- modeb(1,lt(+age,#age)).
:- modeb(1,gt(+education_num,#education_num)).
:- modeb(1,lt(+education_num,#education_num)).
:- modeb(1,gt(+hours_per_week,#hours_per_week)).
:- modeb(1,lt(+hours_per_week,#hours_per_week)).

age(30). age(48). age(79). age(51). age(37). age(28). age(19). age(33). age(76). age(72). age(47). age(58). age(45). age(54). age(46). age(75). age(68). age(32). age(62). age(64). age(44). age(43). age(41). age(29). age(81). age(78). age(42). age(26). age(73). age(77). age(24). age(39). age(18). age(25). age(60). age(69). age(35). age(22). age(21). age(31). age(27). age(66). age(57). age(17). age(67). age(38). age(90). age(71). age(53). age(63). age(56). age(59). age(52). age(70). age(55). age(40). age(49). age(20). age(61). age(65). age(50). age(36). age(74). age(23). age(34).
workclass(self_emp_not_inc). workclass(self_emp_inc). workclass(federal_gov). workclass(private). workclass(local_gov). workclass(state_gov).
education_num(13). education_num(9). education_num(6). education_num(7). education_num(10). education_num(2). education_num(5). education_num(8). education_num(3). education_num(15). education_num(4). education_num(14). education_num(12). education_num(1). education_num(11). education_num(16).
occupation(transport_moving). occupation(sales). occupation(machine_op_inspct). occupation(adm_clerical). occupation(exec_managerial). occupation(other_service). occupation(protective_serv). occupation(priv_house_serv). occupation(craft_repair). occupation(farming_fishing). occupation(tech_support). occupation(armed_forces). occupation(handlers_cleaners). occupation(prof_specialty).
race(black). race(other). race(amer_indian_eskimo). race(asian_pac_islander). race(white).
sex(male). sex(female).
hours_per_week(9). hours_per_week(42). hours_per_week(99). hours_per_week(46). hours_per_week(15). hours_per_week(70). hours_per_week(14). hours_per_week(54). hours_per_week(12). hours_per_week(98). hours_per_week(26). hours_per_week(13). hours_per_week(25). hours_per_week(32). hours_per_week(80). hours_per_week(58). hours_per_week(10). hours_per_week(8). hours_per_week(65). hours_per_week(21). hours_per_week(44). hours_per_week(45). hours_per_week(18). hours_per_week(37). hours_per_week(38). hours_per_week(19). hours_per_week(6). hours_per_week(7). hours_per_week(50). hours_per_week(47). hours_per_week(28). hours_per_week(60). hours_per_week(30). hours_per_week(36). hours_per_week(64). hours_per_week(20). hours_per_week(40). hours_per_week(52). hours_per_week(48). hours_per_week(2). hours_per_week(24). hours_per_week(34). hours_per_week(56). hours_per_week(75). hours_per_week(5). hours_per_week(55). hours_per_week(22). hours_per_week(33). hours_per_week(1). hours_per_week(35). hours_per_week(72). hours_per_week(43). hours_per_week(41). hours_per_week(16).
country(cambodia). country(laos). country(italy). country(portugal). country(poland). country(south). country(guatemala). country(england). country(cuba). country(honduras). country(canada). country(columbia). country(ecuador). country(france). country(china). country(mexico). country(puerto_rico). country(taiwan). country(germany). country(iran). country(el_salvador). country(united_states). country(dominican_republic). country(haiti). country(philippines). country(india). country(jamaica). country(thailand).

:- modeb(1,(+age = #age)).
:- modeb(1,(+workclass = #workclass)).
:- modeb(1,(+education_num = #education_num)).
:- modeb(1,(+occupation = #occupation)).
:- modeb(1,(+race = #race)).
:- modeb(1,(+sex = #sex)).
:- modeb(1,(+hours_per_week = #hours_per_week)).
:- modeb(1,(+country = #country)).
