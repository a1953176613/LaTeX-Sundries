clear;
clc;

h = 110;
alpha = 47.1599;
f = 3;

n = max_jump_wave(f, alpha);

s = 2 * h /tan(alpha/180*pi);

r = (n - 1) * s;
%r = 7 * s;

r 

d = 100;

v0 = 108;
vs = 64.8;
theta = 0;

x = r ;
t = x / (v0 + vs*cos(theta));

t