
%_____________Facts___________________
person(alice).
person(husband).
person(brother).
person(son).
person(daughter).


male(husband).
male(brother).
male(son).

female(alice).
female(daughter).


child(son).
child(daughter).

twin(son,daughter).
twin(daughter,son).
twin(alice,brother).
twin(brother,alice).

older(alice,son).
older(alice,daughter).
older(husband,son).
older(husband,daughter).


together(alice, husband).
together(husband, alice).


%______________Goal_______________
%goal(Murderer,Victim,MaleInBar,FemaleInBar,Aloneinhome)


%______Rules__________

inbeach(E,R) :- person(E), person(R).

inbar(Q, W) :- person(W), person(W),male(Q),   female(W).

istwin(A) :- twin(A,B).

aloneinhome(C) :- person(C), child(C).



goal(Murderer, Victim, MaleInBar, FemaleInBar, Aloneinhome) :-

    person(Murderer), person(Victim),

%Husband_and_Alice_was_not_together_on_the_night_of_murder

        not(together(Murderer, Victim)), 
		Murderer \=@= Victim,
		
		
%The_killer_and_victim_were_on_the_beach

 inbeach(Murderer,Victim),
		
%On_the_night_of_murder_one_male_and_one_female_were_in_the_bar

        inbar(MaleInBar, FemaleInBar),
	MaleInBar \=@= Murderer, MaleInBar \=@= Victim,
	FemaleInBar \=@= Murderer, FemaleInBar \=@= Victim,	
	
	
%Husband_and_Alice_was_not_together_on_the_night_of_murder

    not(together(MaleInBar, FemaleInBar)),	
		
		
%The_victim_was_twin_and_the_counterpart_was_innocent

        istwin(Victim), not(twin(Victim, Murderer)),	
		
%The_killer_was_younger_than_the_victim
	not(older(Murderer, Victim)),
	
	
%One_child_was_alone_at_home

	aloneinhome(Aloneinhome),
	Aloneinhome \=@= MaleInBar, Aloneinhome \=@= FemaleInBar,
	Aloneinhome \=@= Murderer, Aloneinhome \=@= Victim.
	

