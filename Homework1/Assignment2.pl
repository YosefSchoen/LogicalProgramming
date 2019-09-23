%Yosef Schoen 506429330
%Saul Rothman 337923676

%males
%male father's father and grandfather
male(karl).
male(lou).

%lou's and anita's kids
male(david).
male(danny).
male(jonny).
male(joel).

%david's and michelle's male kids
male(ben).
male(judah).
male(kuti).

%david's and michelle's male kid through marrige
male(avi).
male(moshe).
male(donny).

%ben's and tzipora's male kids
male(dovi).
male(mosheS).
male(kutiS).

%avi's and aliza's male kids
male(mosheF).
male(aryeh).

%moshe's and esti's male kids
male(chaimS).

%danny's and yehudis's male kids
male(yaakov).
male(yosef).

%jonny's and bergitte's male kids
male(josh).
male(jason).

%joel's and beth's male kids
male(zack).
male(sammy).

%mother's father and grandfathers
male(joe).
male(abe).
male(lenny).
%lenny's and sandy's male's kids
male(scott).
male(mark).

%mark's and johanne's male kids
male(avrumi).
male(tzvi).
male(uri).

%mark's and johanne's male kids through marrige
male(eli).
male(cheski).

%eli's and rena's male kids
male(chaimP).

%cheski's and shira's male kids
male(micha).

%females
%father's mother
female(anita).

%uncles' wives
female(michelle).
female(bergitte).
female(beth).

%david's and michelle's female kids
female(aliza).
female(esti).
female(ariella).

%david's and michelle's female kids through marrige
female(tzipora).

%avi's and aliza's female kids
female(tamara).

%moshe's and esti's female kids
female(meiri).
female(suri).

%danny's and yehudis's female kids
female(tamar).
female(ilana).

%jonny's and bergitte's female kids
female(emily).

%joel's and beth's female kids
female(rachel).

%mother's mother and grandmothers
female(tilley).
female(edith).
female(sandy).

%lenny's and sandy's female's kids
female(yehudis).

%mark's and johanne's female kids
female(rena).
female(shira).

%avrumi's and tehila's female kids
female(eliana).
female(nechama).

%tzvi and zehava female kids
female(racheli).

%eli's and rena's female kids
female(emuna).

%mark's and johanne's female kids through marrige
female(tehila).
female(zehava).

%scott's and lisa's female kids
female(halle).
female(mackie).

%married
%grandparents and greatgrandparents
married(lou, anita).

married(joe, edith).
married(abe, tilley).
married(lenny, sandy).

%parents
married(danny, yehudis).

%aunts and uncles (father's side)
married(david, michelle).
married(jonny, bergitte).
married(joel, beth).

%aunts and uncles (mothers's side)
married(mark, johanne).
married(scott, lisa).

%married cousins (father's side)
married(ben, tzipora).
married(avi, aliza).
married(moshe, esti).
married(donny, ariella).

%married cousins (mother's side)
married(avrumi, tehila).
married(tzvi, zehava).
married(eli, rena).
married(cheski, shira).

%mother's parents and grandparents
parent(joe, lenny).
parent(edith, lenny).

parent(abe, sandy).
parent(tilley, sandy).

parent(lenny, mark).
parent(lenny, scott).
parent(lenny, yehudis).
parent(sandy, mark).
parent(sandy, scott).
parent(sandy, yehudis).

%father's parents
parent(karl, lou).
parent(lou, david).
parent(lou, danny).
parent(lou, jonny).
parent(lou, joel).
parent(anita, david).
parent(anita, danny).
parent(anita, jonny).
parent(anita, joel).

%my parents
parent(danny, yaakov).
parent(danny, yosef).
parent(danny, tamar).
parent(danny, ilana).
parent(yehudis, yaakov).
parent(yehudis, yosef).
parent(yehudis, tamar).
parent(yehudis, ilana).

%cousins family (father's side 1)
parent(david, ben).
parent(david, judah).
parent(david, kuti).
parent(david, aliza).
parent(david, esti).
parent(david, ariella).
parent(michelle, ben).
parent(michelle, judah).
parent(michelle, kuti).
parent(michelle, aliza).
parent(michelle, esti).
parent(michelle, ariella).

%cousins family (father's side 1.1)
parent(ben, dovi).
parent(ben, mosheS).
parent(ben, kutiS).
parent(tzipora, dovi).
parent(tzipora, mosheS).
parent(tzipora, kutiS).

%cousins family (father's side 1.2)
parent(avi, mosheF).
parent(avi, aryeh).
parent(avi, tamara).
parent(aliza, mosheF).
parent(aliza, aryeh).
parent(aliza, tamara).

%cousins family (father's side 1.3)
parent(moshe, chaimS).
parent(moshe, meiri).
parent(moshe,  suri).
parent(esti, chaimS).
parent(esti, meiri).
parent(esti, suri).

%cousins family (father's side 2)
parent(jonny, josh).
parent(jonny, jason).
parent(jonny, emily).
parent(bergitte, josh).
parent(bergitte, jason).
parent(bergitte, emily).

%cousins family (father's side 3)
parent(joel, zack).
parent(joel, sammy).
parent(joel, rachel).
parent(beth, zack).
parent(beth, sammy).
parent(beth, rachel).

%cousins family (mother's side 1)
parent(mark, avrumi).
parent(mark, tzvi).
parent(mark, uri).
parent(mark, rena).
parent(mark, shira).
parent(johanne, avrumi).
parent(johanne, tzvi).
parent(johanne, uri).
parent(johanne, rena).
parent(johanne, shira).

%cousins family (mother's side 1.1)
parent(avrumi, eliana).
parent(avrumi, nechama).
parent(tehila, eliana).
parent(tehila, nechama).

%cousins family (mother's side 1.2)
parent(tzvi, racheli).
parent(zehava, racheli).

%cousins family (mother's side 1.3)
parent(eli, chaimP).
parent(eli, emuna).

%cousins family (mother's side 1.4)
parent(cheski, micha).
parent(shira, micha).

%cousins family (mother's side 2)
parent(scott, halle).
parent(scott, mackie).
parent(lisa, halle).
parent(lisa, mackie).


%parents definitions
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

%grandparent definintions
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).

%great-grandparent definitions
greatgrandparent(X, Y) :- grandparent(X, Z), parent(Z, Y).
greatgrandfather(X, Y) :- greatgrandparent(X, Y), male(X).
greatgrandmother(X, Y) :- greatgrandparent(X, Y), female(X).

%child definintions
child(X, Y) :- parent(Y, X).
son(X, Y) :- child(X, Y), male(X).
daughter(X, Y) :- child(X, Y), female(X).

%grandchild definintions
grandchild(X, Y) :- child(X, Z), child(Z, Y).
grandson(X, Y) :- grandchild(X, Y), male(X).
granddaughter(X, Y) :- grandchild(X, Y), female(X).

%great-grandchild definitions
greatgrandchild(X, Y) :- grandchild(X, Z), child(Z, Y).
greatgrandson(X, Y) :- greatgrandchild(X, Y), male(X).
greatgranddaughter(X, Y) :- greatgrandchild(X, Y), female(X).

%sibling definintions
sibling(X, Y) :- father(W, X), father(W, Y), mother(Z, X), mother(Z, Y).
brother(X, Y) :- sibling(X, Y), male(X).
sister(X, Y) :- sibling(X, Y), female(X).

%uncle definitions
fathersbrother(X, Y) :- brother(X, Z), father(Z, Y).
mothersbrother(X, Y) :- brother(X, Z), mother(Z, Y).
fathersSistershusband(X, Y) :- fatherssister(Z, Y), married(X, Z).
motherssistershusband(X, Y) :-  mothersbrother(Z, Y), married(X, Z).
uncle(X, Y) :- fathersbrother(X, Y) ; mothersbrother(X, Y) ; fathersSistershusband(X, Y) ; motherssistershusband(X, Y).

%aunt definitions
fatherssister(X, Y) :- sister(X, Z), father(Z, Y).
motherssister(X, Y) :- sister(X, Z), mother(Z, Y).
fathersbrotherswife(X, Y) :- fathersbrother(Z, Y), married(Z, X).
mothersbrotherswife(X, Y) :- mothersbrother(Z, Y), married(Z, X).
aunt(X, Y) :- fatherssister(X, Y) ; motherssister(X, Y) ; fathersbrotherswife(X, Y) ; mothersbrotherswife(X, Y).

%cousin, niece, and nephew definitions
cousin(X, Y) :- child(X, W), child(Y, Z), sibling(W, Z), W\=Z.
nephew(X, Y) :- (uncle(Y, X) ; aunt(Y, X)), male(X).
niece(X, Y) :- (uncle(Y, X) ; aunt(Y, X)), female(X).

%inlaws definitions
soninlaw(X, Y) :- married(X, Z), daughter(Z, Y).
daughterinlaw(X, Y) :- married(Z, X), son(Z, Y).
brotherinlaw(X, Y) :- married(Y, Z), sibling(X, Z).
sisterinlaw(X, Y) :- (married(X, Z) ; married(Z, X)), sibling(Y, Z), female(X).
siblinginlaw(X, Y) :- brotherinlaw(X, Y) ; brotherinlaw(Y, X) ; sisterinlaw(X, Y) ; sisterinlaw(Y, X).

lineage(X, Y) :- father(X, Z),
    lineage(Z, Y).
lineage(X, Y) :- father(X, Y).
