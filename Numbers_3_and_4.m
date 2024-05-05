% Clear
clear
clc
close all

%% Second Order Critically Damped System
% G(s) = 1 / (s+1)^2

M = 5;
B = 10;
k = 5;
H_num = [1];
H_den = [M B k]; 

H = tf(H_num,H_den)

% step response
step(H,0:0.1:20)


%% First Order System
% G(s) = 1 / (s+1)

M = 0;
B = 5;
k = 5;
L_num = [1];
L_den = [M B k]; 

L = tf(L_num,L_den)

% step response
step(L,0:0.1:20)
