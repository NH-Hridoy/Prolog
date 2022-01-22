%Starting Stage
%Monkey is at door, 
%Monkey is on offbox, 
%Box is at window, 
%Monkey doesn't have banana.


%-----GoalState-----
%state(middleintheroom, onbox, middle, getBanana)


%-------possiblestate-----
%state(isAtDoor, offbox, isAtwindowside, notgetBanana).
%state(middleintheroom, offbox, isAtwindowside, notgetBanana).
%state(isAtWindowside, onbox, isAtwindowside, notgetBanana).
%state(isAtWindowside, offbox, isAtwindowside, notgetBanana).
%state(middleintheroom, offbox, middle, notgetBanana).
%state(middleintheroom, onbox, middle, notgetBanana).


%state(Monkey_Position, Monkey_onbox/offbox,Box_Position,get/notget banana)



goal(state(middleintheroom, onbox, middle, getBanana)).


move(
state(isAtDoor, offbox, isAtwindowside, notgetBanana),
walking,
state(isAtWindowside, offbox, isAtwindowside, notgetBanana)
).


move(
state(middleintheroom, offbox, isAtwindowside, notgetBanana),
walking,
state(isAtWindowside, offbox, isAtwindowside, notgetBanana)
).

move
state(isAtWindowside, onbox, isAtwindowside, notgetBanana),
climbdown,
state(isAtWindowside, offbox, isAtwindowside, notgetBanana)
).


move(
state(isAtWindowside, offbox, isAtwindowside, notgetBanana),
movingBox,
state(middleintheroom, offbox, middle, notgetBanana)
).



move(
state(middleintheroom, offbox, middle, notgetBanana),
climbonBox,
state(middleintheroom, onbox, middle, notgetBanana)
).


move(
state(middleintheroom, onbox, middle, notgetBanana),
grabBanana,
state(middleintheroom, onbox, middle, getBanana)
).



goal(State1) :- move(State1, Move, State2), goal(State2).



