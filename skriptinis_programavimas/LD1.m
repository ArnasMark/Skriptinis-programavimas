%Arnas Markiavičius EEf-25/2 2026-09-08

%Privaloma uzduotis

%7 uzduotis
x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]  |  F_2 [-x-]')

%8 uzduotis

%help sin
%help plot
%help title

%doc sin
%doc plot
%doc title

%lookfor sin
%lookfor plot
%lookfor title

%9 uzduotis

%linspace - sukuria tolygiai isdestytu skaiciu seka
linspace(0, 10, 5)

%nustato masyvo eiluciu ir stulpeliu skaicius (masyvo dydis)
C = [1 2 3; 4 5 6; 7 8 9]
D = [10 11 12]
size(C)
size(D)

%max - suranda didziausia reiksme masyve arba matricoje
max(C)
max(D)

%Papildoma uzduotis:

N = 1;
v = N+1: 0.5: N+4
A = [N N+1 N+2; N+3 N+4 N+5; N+6 N+7 N+8]
a=A(3,2)
a1=A(2:3,1:2)
a2=A([1 3], [1 3])
A = [A v(1:3)'] 

