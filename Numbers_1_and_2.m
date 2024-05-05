% Clear
clear
clc
close all

%% Second Order Underdamped System
% G(s) = 1 / s^2 + 2s + 1

M = 10;
B = 5;
k = 10;

G_num = [1];
G_den = [M B k]; 
G = tf(G_num,G_den)

% step response
step(G,0:0.1:20)

%% Second Order Overdamped System
% T(s) = 1 / s^2 + 2s + 1

M = 5;
B = 15;
k = 5;

T_num = [1];
T_den = [M B k];
T = tf(T_num,T_den)

% step response
step(T,0:0.1:20)
%%