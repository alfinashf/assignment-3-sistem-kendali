%Alfina Shafiyyah Makarim
%21/481478/PA/20966


clear
clc
K = 1
num = K
denum = [3,2,K]
G = tf(num, denum)
s = tf('s')

figure
subplot(311), step(G);
subplot(312), step(G/s);
subplot(313), impulse(G);

info = stepinfo(G)

[y,t] = step(G)
y(length(y))
plot(t,y);
xlabel('Time (sec)');
ylabel('Amplitude');
title('step responce');
