distance(campa,kansas_city,80).
distance(kansas_city,houston,120).
distance(houston,gordon,100).
distance(kansas_city,campa,80).
distance(houston,kansas_city,120).
distance(gordon,houston,100).

goal(City1,City3,Distance):-distance(City1,City2,Dis1),distance(City2,City3,Dis2).,Distance=Dis1+Dis2.

%goal(campa,gordon,Distance).


