function lab01_main
%=== ���������:������ ������� ��������� ���������� ===
%--- ����������� ������ #1 ����������� ���������� ������� ---
%
% �������������� ����� �����: 
% pec1.dat - ������ ���, ��� �� ����������� ������
%
% ������� ����������� (m-�����), �� ��������� ���������:
% pks = pksdetect(�) - ����������� ��� � ����������� ������
%--------------------------------------------------------------------

clear, clc, close all
disp('����������� ������ #1')
disp('����������� ���������� �������')
disp('�������:������ �.� , ����� 462 ����') 

%=== �������� #1.1 ===
% ����������� ���������� ��������
N = 10;
n = 0:N-1;
x = double(n==0);
y = double(n==2);
class(x); 
figure(1)
subplot(2,1,1), stem(n, x, '.'), grid on
title('������ �������')
xlabel('³����');
ylabel('��������');
subplot(2,1,2),stem(n,y,'*'), grid on
title ('������ ������� � ��������� n-2');
xlabel('³����');
ylabel('��������');


%=== �������� #1.2 === 
% ����������� ����������� �������
N =200;
n =0:N-1;
x =cos(pi*n/16) ;
figure(2);
title('���������� ������');
subplot(3,1,1), stem(x,'*'), grid on;
xlabel('³����');
ylabel('��������');
subplot(3,1,2), plot(x),grid on;
xlabel('³����');
ylabel('��������');
subplot(3,1,3), stairs(x),grid on;
xlabel('³����');
ylabel('��������');


%=== �������� #1.3 ===
% ����������� ��������� ����������
n =0:20;
x1 = 0.8.^n;
x2 = -0.8.^n;
x3 = 1.1.^n;
x4 = -1.1.^n;
figure(3)
title('����� ��������� ����������');
subplot(4,1,1), stem(x1); grid on
xlabel('³����')
ylabel('��������');
subplot(4,1,2), stem(x2); grid on
xlabel('³����');
ylabel('��������');
subplot(4,1,3), stem(x3); grid on
xlabel('³����');
ylabel('��������');
subplot(4,1,4), stem(x4); grid on
xlabel('³����');
ylabel('��������');

Fs=1000;
t=0:1/Fs:2;
x = 3*sin(6.*pi.*t)+5*sin(16*pi.*t);
pks = pksdetect(x);
figure (4);
plot(t,x,'k-'); hold on;
plot(t(pks),x(pks), 'k*'); hold off;
title ('������������� ������');
xlabel('time(s)'); ylabel('x(t)');
