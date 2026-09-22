%Arnas_Markiavičius_EEf-25/2
%2026-09-22

% 1. Dvimatis grafikų vaizdavimas

%a
x = 0:0.1:2*pi;
f = x.^3 + tan(x);

figure(1)
plot(x, f, 'bo');

axis([min(x) max(x) min(f) max(f)]);

grid on;

title('f(x) = x^3 + tan(x)');
xlabel('x');
ylabel('f(x)');
legend('f(x) = x^3 + tan(x)', 'Location', 'bestoutside'); 

%b
x = 0:0.01:2;

f1 = exp(x);
f2 = exp(2*x);
f3 = exp(3*x);

figure(2)
plot(x, f1, 'b', ...
    x, f2, 'r', ...
    x, f3, 'g');

axis([min(x) max(x) min([f1 f2 f3]) max([f1 f2 f3])]);

grid on;

title('Eksponentinės funkcijos');
xlabel('x');
ylabel('f(x)');
legend('e^x', 'e^{2x}', 'e^{3x}', 'Location', 'bestoutside');

% 2. Specializuotų grafikų kūrimas

clc;
clear;
close all;

pazymiai = [
    8  6  9  7;
    7  8 10  9;
    9  7  8  6;
    6  5  7  8;
    10 9  8  9;
    7  8  6 10
];

studentai = {'Jonas', 'Petras', 'Ona', 'Ieva', 'Tomas', 'Laura'};


figure;


%% 2a ir 2c

subplot(2,1,1);

bar(pazymiai);

xlabel('Studentai');
ylabel('Įvertinimas');

title('Studentų egzaminų rezultatai');

ylim([0 10]);

xticks(1:6);
xticklabels(studentai);

legend('1 egzaminas', ...
       '2 egzaminas', ...
       '3 egzaminas', ...
       '4 egzaminas', ...
       'Location', 'eastoutside');

grid on;


% 2b ir 2c

subplot(2,1,2);

bar(pazymiai, 'stacked');

xlabel('Studentai');
ylabel('Įvertinimų suma');

title('Studentų egzaminų rezultatų suma');

xticks(1:6);
xticklabels(studentai);

ylim([0 40]);

grid on;

%P. Signalų grafinis atvaizdavimas


clc;
clear;
close all;

A = 7;
f = 9;
ro = 1.2;

U1 = 4.5;
U2 = 2.5;

t = 0:0.002:1;

s = A*cos(2*pi*f*t);

n = ro*randn(size(t));

sn = s + n;


figure;


subplot(2,1,1);

plot(t, s, '--', 'LineWidth', 1);

hold on;

plot(t, sn, '-', 'LineWidth', 1);

yline(U1, 'b--', 'LineWidth', 1);

yline(U2, 'r--', 'LineWidth', 1);

hold off;

xlabel('Laikas, s');
ylabel('Įtampa, V');

title('Pradinis ir filtruotas signalai');

legend('Pradinis signalas', ...
    'Filtruotas signalas', ...
    'U_1 riba', ...
    'U_2 riba', ...
    'Location', 'southwest');

grid off;

axis([min(t) max(t) min([s sn])-1 max([s sn])+1]);



subplot(2,1,2);

indeksai = s > U1;

stem(t(indeksai), s(indeksai), ...
    'filled', 'LineWidth', 1);

hold on;


minimumai = islocalmin(s);

plot(t(minimumai), s(minimumai), ...
    'ko', ...
    'MarkerFaceColor', 'k', ...
    'MarkerSize', 5);

hold off;

xlabel('Laikas, s');
ylabel('Įtampa, V');

title('Pradinio signalo reikšmės virš U_1');

legend('s > U_1', ...
    'Minimalios įtampos reikšmės', ...
    'Location', 'southwest');

grid off;

axis([min(t) max(t) min(s)-1 max(s)+1]);