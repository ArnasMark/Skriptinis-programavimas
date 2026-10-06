% %Arnas_Markiavičius_EEf-25/2
% %2026-10-06
% 
clear;
clc;
close all;


%Kiti duomenų tipai ir operacijų nuoseklumas

%1 UŽDAVINYS

%a

duomenys = struct();

duomenys.x = 0:0.01:1;

duomenys.signalas = sin(2*pi*duomenys.x);

duomenys.pavadinimas = 'f(x) = sin(2*pi*x)';
duomenys.tipas = 'Sinusinis signalas';
duomenys.grafikoPavadinimas = 'Sinusinio signalo grafikas';

%b

figure;

plot(duomenys.x, duomenys.signalas, ...
    'b', 'LineWidth', 1.5);

grid on;

xlabel('x');
ylabel('f(x)');

title(duomenys.grafikoPavadinimas);

xlim([min(duomenys.x) max(duomenys.x)]);
ylim([min(duomenys.signalas) max(duomenys.signalas)]);

legend(duomenys.pavadinimas);

%2 UŽDAVINYS5

while true

    %Kintamųjų įvedimas
    a = input('Įveskite a: ');
    b = input('Įveskite b: ');
    c = input('Įveskite c: ');

    %Nutraukimo sąlyga
    if a == -1 && b == 1 && c == -1
        disp('Įvestos nutraukimo reikšmės.');
        disp('Programa baigiama.');
        break;
    end

    %a apdorojimas
    if a < 0
        operacija = 'kvadratas';
    elseif a > 0
        operacija = 'kubas';
    else
        operacija = 'nulis';
    end

    switch operacija
        case 'kvadratas'
            a_rez = a^2;
        case 'kubas'
            a_rez = a^3;
        case 'nulis'
            a_rez = 0;
    end

    %b apdorojimas
    if b < 0
        operacija = 'kvadratas';
    elseif b > 0
        operacija = 'kubas';
    else
        operacija = 'nulis';
    end

    switch operacija
        case 'kvadratas'
            b_rez = b^2;
        case 'kubas'
            b_rez = b^3;
        case 'nulis'
            b_rez = 0;
    end

    %c apdorojimas
    if c < 0
        operacija = 'kvadratas';
    elseif c > 0
        operacija = 'kubas';
    else
        operacija = 'nulis';
    end

    switch operacija
        case 'kvadratas'
            c_rez = c^2;
        case 'kubas'
            c_rez = c^3;
        case 'nulis'
            c_rez = 0;
    end

    %Rezultatų išvedimas
    disp('-----------------------------');
    disp('Rezultatai:');
    disp(['a rezultatas = ', num2str(a_rez)]);
    disp(['b rezultatas = ', num2str(b_rez)]);
    disp(['c rezultatas = ', num2str(c_rez)]);
    disp('-----------------------------');

end


%Papildoma užduotis - atsitiktinių skaičių generavimas

clc;
clear;
close all;

pirmas = [];
antras = [];

vienodi = 0;
ankstesnis = -1;

while vienodi < 3

    x = round(rand*9);
    y = round(rand*11);

    pirmas(end+1) = x;
    antras(end+1) = y;

    if x == ankstesnis
        vienodi = vienodi + 1;
    else
        vienodi = 1;
    end

    ankstesnis = x;

end



figure;

plot(1:length(pirmas), pirmas, '-o');
hold on;

plot(1:length(antras), antras, '-x');

grid on;

xlabel('Sugeneruoto skaičiaus eilės numeris');
ylabel('Skaičiaus reikšmė');

title('Sugeneruoti atsitiktiniai skaičiai');

legend('round(rand*9)', 'round(rand*11)');

hold off;