function [x4,y2]= highRA_V2(rate)
x=[130.8073675 131.2070186 132.0063207 132.6057972 133.5064935 134.5454545 137.6623377 143.3963755 143.9958521 145.1948052 146.3937583 146.9932349 148.7916646 150.5900943 151.1895709 153.5874772 157.7838131 162.5796257 166.1764851,166.1764851 166.1764851 169.3506494 173.5064935 174.5454545 175.0649351 175.1686336 178.0461212 182.961829 187.7576416 192.5534542 197.3492667 202.1450793 206.9408918 211.7367044 216.5325169 220.3292019 223.7262357 228.5220483 232.7183843 234.7166395 238.4134117 240.5115797 244.1084391];

y=[0.428447606 0.413557382 0.400652521 0.390229363 0.35483871 0.309677419 0.202580645 0.348536735 0.359952574 0.372361094 0.384273274 0.394696431 0.4092144 0.428943947 0.444578683 0.457731714 0.469147553 0.471381087 0.469147553 0.457235373 0.441228382 0.357419355 0.201290323 0.35483871 0.452903226 0.499300258 0.486122409 0.482548755 0.486271311 0.487015822 0.484782289 0.482921011 0.482176499 0.47957071 0.481059733 0.493468253 0.507117625 0.51009567 0.498928002 0.488008504 0.473242365 0.463191463 0.455746351];

%rate=input('enter heart rate(bpm):')
r=1/(rate/60);
 %r=600 %length of one beat (ms)
len=x(end)-x(1);
d=r/len;
x=x*d;
x=x-x(1);

%figure(1)
%plot(x,y)
% beat_length=numel(x) % num data points per cycle
% f=beat_length/600 %samples per ms
% f1=(x(end)-x(1))/600

y(end)=y(1);
x2=x+(x(end)-x(1));
x3=x2+(x2(end)-x2(1));
x4=[x x2 x3];
y2=[y y y];

%figure (2)
%plot(x4,y2)
%axis([0 2 0 .6])
end


