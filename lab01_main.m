function lab01_main
%=== Дисципліна:Основи обробки біомедичної інформації ===
%--- Лабораторна робота #1 Моделювання дискретних сигналів ---
%
% Використовуйте файли даних: 
% pec1.dat - сигнал ФКГ, ЕКГ та каротидного пульсу
%
% Функції користувача (m-файли), які необхідно розробити:
% pks = pksdetect(х) - знаходження піків в дискретному сигналі
%--------------------------------------------------------------------

clear, clc, close all
disp('Лабораторна робота #1')
disp('Моделювання дискретних сигналів')
disp('Виконав:Грищук Д.Г , група 462 ІІДС') 

%=== Завдання #1.1 ===
% Моделювання одиничного імпульсу
N = 10;
n = 0:N-1;
x = double(n==0);
y = double(n==2);
class(x); 
figure(1)
subplot(2,1,1), stem(n, x, '.'), grid on
title('Модель сигналу')
xlabel('Відліки');
ylabel('Амплітуда');
subplot(2,1,2),stem(n,y,'*'), grid on
title ('Модель сигналу з затримкой n-2');
xlabel('Відліки');
ylabel('Амплітуда');


%=== Завдання #1.2 === 
% Моделювання дискретного сигналу
N =200;
n =0:N-1;
x =cos(pi*n/16) ;
figure(2);
title('Дискретний сигнал');
subplot(3,1,1), stem(x,'*'), grid on;
xlabel('Відліки');
ylabel('Амплітуда');
subplot(3,1,2), plot(x),grid on;
xlabel('Відліки');
ylabel('Амплітуда');
subplot(3,1,3), stairs(x),grid on;
xlabel('Відліки');
ylabel('Амплітуда');


%=== Завдання #1.3 ===
% Моделювання дискретної експоненти
n =0:20;
x1 = 0.8.^n;
x2 = -0.8.^n;
x3 = 1.1.^n;
x4 = -1.1.^n;
figure(3)
title('Моделі дискретної експоненти');
subplot(4,1,1), stem(x1); grid on
xlabel('Відліки')
ylabel('Амплітуда');
subplot(4,1,2), stem(x2); grid on
xlabel('Відліки');
ylabel('Амплітуда');
subplot(4,1,3), stem(x3); grid on
xlabel('Відліки');
ylabel('Амплітуда');
subplot(4,1,4), stem(x4); grid on
xlabel('Відліки');
ylabel('Амплітуда');

%%Завдання 1.4-1.6%%

Fs=1000;
t=0:1/Fs:2;
x = 3*sin(6.*pi.*t)+5*sin(16*pi.*t);
pks = pksdetect(x);
figure (4);
plot(t,x,'k-'); hold on;
plot(t(pks),x(pks), 'k*'); hold off;
title ('Змодельований сигнал');
xlabel('time(s)'); ylabel('x(t)');

%%Завдання "2.1-2.2"%%
Fs=200;
T=1/Fs;
D=0.25;
MU=0;
n=0:1000;
Q = 1;
R=randn(size(n))*Q+MU;
s=1.8*cos(20*pi.*n*T);
x=s+R;
figure(5);
subplot(3,1,1),plot(s);
title('Model signala');
xlabel('Відліки');
ylabel('Амплітуда');
xlim ([0 1000]);
subplot (3,1,2), plot(R);
title ('Шум');
xlabel('Відліки');
ylabel('Амплітуда');
xlim([0 1000]);
subplot(3,1,3),plot (x);
title('Стохастичний сигнал');
xlabel('Відліки')
ylabel('Амплітуда');
xlim([0 1000]);
fprintf('MU (R) = %4.3g\n', mean(R));
fprintf('D(R)=%4.3g\n', var(R));
fprintf('x(n)=%4.3g\n', mean(n));
fprintf('s(n)=%4.3g\n', mean(n));
%%MU (R) = 0.0366
%%D(R)=1.01
%%x(n)= 500
%%s(n)= 500

%% Завдання 3.1%%
pec1= load('pec1.dat');
Fs=1000;
fcg= pec1(:,1);
ecg= pec1(:,2);
cps= pec1(:,3);
T= (0:length(fcg)-1)/Fs
figure (6);
subplot(3,1,1), plot(T,fcg);
title ('Фонокардіограма');
xlim([1 4]);
ylabel('Амплітуда');
subplot(3,1,2), plot(T,ecg);
title('ЕКГ')
xlim([1 4]);
ylabel('Амплітуда');
subplot(3,1,3), plot(T,cps);
title('Сигнали каротидного пульсу');
xlim([1 4]);
ylabel('Амплітуда');



