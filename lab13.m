clear all;
close all;
clc;



hs=[ 0.1;0.05;0.02;0.01;0.001];
len=length(hs);

forward=zeros(len,1);
backward=zeros(len,1);
lamda=-100;

for i=1:len
    n=0.2/hs(i);
    forward(i)=( 1 + lamda*hs(i) )^n;
    backward(i)=( 1 - lamda*hs(i) )^(-n);
end

ana=exp(lamda*0.2)

table(hs,forward,backward)