% Clear
clear
clc
close all

%% Define Transfer Function
% Number 5
% Resonant System
% G(s) = 8*s^6 + 7*s^5 + 6*s^4 + 5*s^3 + 4*s^2 + 3*s + 2 / s^7 + 2*s^6 +
% 3*s^5 + 4*s^4 + 5*s^3 + 6*s^2 + 7*s + 1

x7 = 8;
x6 = 7;
x5 = 6;
x4 = 5;
x3 = 4;
x2 = 3;
x1 = 2;
y7 = 1;
y6 = 2;
y5 = 3;
y4 = 4;
y3 = 5;
y2 = 6;
y1 = 7;
y = 1

G5_num = [x7 x6 x5 x4 x3 x2 x1];
G5_den = [y7 y6 y5 y4 y3 y2 y1 y];
G5 = tf(G5_num,G5_den)

% step response
step(G5,0:0.1:20)



%% Define Transfer Function
% Number 6
% Electrical Filter with Multiple Poles
% G(s) = 4*s^3 + 3*s^2 + 2*s + 1 / s^4 + 2*s^3 + 3*s^2 + 4*s + 1


s4 = 4;
s3 = 3;
s2 = 2;
s1 = 1;
t5 = 1;
t4 = 2;
t3 = 3;
t2 = 4;
t1 = 1;

G6_num = [s4 s3 s2 s1];
G6_den = [t5 t4 t3 t2 t1];
G6 = tf(G6_num,G6_den)

% step response
step(G6,0:0.1:20)

