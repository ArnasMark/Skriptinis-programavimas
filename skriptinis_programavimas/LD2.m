%Arnas_Markiavičius_EEf-25/2
%2026-09-15


% %1 uzduotis
% 
% % a)
% syms a;
% a = 5:2:34
% % b)
% syms b;
% b = exp(a)
% % c) 
% syms c;
% c = a ./ b
% % d)
% syms d;
% d = c'

% %2 uzduotis
% 
% % a)
% A = [pi/2 3i;
%     log(2) 2*pi]
% % b)
% B = [exp(A(1,1)) exp(A(1,2))]
% C = [A B']
% % c)
% Pirm = sum(C(1,:))
% Antr = sum(C(2,:))

% %3 uzduotis
% 
% %Duomenys
% A = 7;
% f = 9;
% ro = 1.2;
% U1 = 4.5;
% U2 = 2.5;
% t = 0:0.002:1;
% s = A*cos(2*pi*f*t);
% n = ro*randn(size(t));
% sn = s + n;
% 
% % a)
% virs = (sn > U1)
% 
% % ?? b)
% maz = (abs(sn) < U2) == 0;
% 
% % c)
% length(t)
% 
% % d)
% dydis = length(virs(virs == 1))
% 
% % e)
% max(sn)
% min(sn)

%Papildoma uzd

A = input('Iveskite vektoriu A: ')
B = [];
for i = 1:length(A);
    kart = repmat(A(i),1 ,i);
    B = [B, kart];
end
disp('Vektorius B yra: ')
disp(B)


