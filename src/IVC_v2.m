function [x3,y2]= IVC_v2(rate)
x=[127.9533463 136.5953902 144.6931408 151.2801999 160.6331575 175.2957512 180.5498473 186.4815329 195.201333 201.288531 257.2507637 264.4487642 275.2901972 281.3551791 283.910025 289.2307692];
y=[0.482268814 0.385962233 0.471299639 0.483240766 0.48029714 0.480908081 0.492793668 0.503040822 0.495070814 0.481991114 0.487656207 0.507956123 0.481741183 0.471993891 0.488767009 0.490655374];
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

%plot(x3,y2);
%axis([0 2 0 0.9]);
end