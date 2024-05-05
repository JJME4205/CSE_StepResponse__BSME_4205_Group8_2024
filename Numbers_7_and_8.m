% Clear
clear
clc
close all

% Plant with Time Delay
% G(s) = 6*s^4 + 5*s^3 + 4*s^2 + 3*s + 2 / s^5 + 2*s^4 + 3*s^3 + 4*s^2 + 5*s + 1


j5 = 6;
j4 = 5;
j3 = 4;
j2 = 3;
j1 = 2;
c5 = 1;
c4 = 2;
c3 = 3;
c2 = 4;
c1 = 5;
c = 1;

G7_num = [j5 j4 j3 j2 j1];
G7_den = [c5 c4 c3 c2 c1 c];
G7 = tf(G7_num,G7_den)

% step response
step(G7,0:0.1:20)

%% Define Transfer Function
% Nonlinear System Approximation
% G(s) = 10*s^4 + 8*s^3 + 6*s^2 + 4*s + 2 / s^5 + 3*s^4 + 5*s^3 + 7*s^2 + 9*s + 1


m5 = 10;
m4 = 8;
m3 = 6;
m2 = 4;
m1 = 2;
n6 = 1;
n5 = 3;
n4 = 5;
n3 = 7;
n2 = 9;
n1 = 1;

G8_num = [m5 m4 m3 m2 m1];
G8_den = [n6 n5 n4 n3 n2 n1];
G8 = tf(G8_num,G8_den)

% step response
step(G8,0:0.1:20)
