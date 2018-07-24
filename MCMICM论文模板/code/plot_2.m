clear;
clc;

x=0:0.01:6;
c=pi/4-atan(x./2);
a=(15*sin(c)-sqrt(15-(cos(c)).^2))./(15*sin(c)+sqrt(15-(cos(c)).^2));
b=(sin(c)-sqrt(15-(cos(c)).^2))./(sin(c)+sqrt(15-(cos(c)).^2));
y=10*log10((a.^2+b.^2)./2);
plot(x,y)