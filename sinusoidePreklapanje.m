close all
clear all
clc

t=0:0.001:10;

n=2;
f1=0.515;
faza1=0;

f2=f1*n;
faza2=-pi/2;

sin1=sinusoida(f1,t,faza1);
plot(t, sin1, "c");

hold on

sin2=0.3*sinusoida(f2, t, faza2);
plot(t,sin2, "b");

rezultanta=sin1+sin2;
plot(t, rezultanta, "m");


legend({"prva","druga", "rezultanta"});
