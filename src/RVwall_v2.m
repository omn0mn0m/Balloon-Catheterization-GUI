function [x3,y2]= RVwall_v2(rate)
x=[117.6111579 122.9669601 128.3368621 133.7170185 139.1454562 144.6106389 150.0698398 155.5209227 160.9493604 164.6439452 172.3035413 179.0893761 181.2344013 188.1146712 204.9376054 223.2175379 237.0320405 247.5368936 252.9136319 258.2989155 263.7363258 267.7241019 270.0668683 274.3381223 279.7823689 282.7206897];
y=[0.552226508 0.555468403 0.55670107 0.556472482 0.549363814 0.537018978 0.525526542 0.515190933 0.508082265 0.504179173 0.74 1.07301855 -0.032647555 1.086913997 1.089645868 1.084755481 0.61618887 0.571811397 0.572069894 0.571110678 0.56272341 0.551878926 0.531579859 0.515178115 0.505816677 0.505166162];
%hr=input('enter heart rate(bpm):')
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
x3=[x x2];
y2=[y y];

%figure (2)
%plot(x3,y2)
%axis([0 2 -.1 1.5])
end


