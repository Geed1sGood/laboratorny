function lab02_main
%=== ���������: ������ ������� ��������� ���������� ===
%--- ����������� ������ #2 Բ�����ֲ� ��������˲� Բ������� � Ѳ�
%
% �������������� ����� �����: 
% ecg117.dat - ������ E�� 
% ecg_2�60.dat - ������ ��� � ��������� ���������� �������� 60 ��
%----------------------------------------------------------

clear, clc, close all
disp('����������� ������ #2')
disp('Բ�����ֲ� ��������˲� Բ������� � Ѳ�')
disp('�������: ..., ����� ... IIDS')

%=== �������� #1.1 ===
% ��������� ������� ��������, ���������� ��� �� ���
fs =1000;
b =[1 2 1]/4;		% ����������� ���������� ������� 
a = 1;
n =512; 	% ������� �����, �� ��������������
figure(1);
[h,w] = freqz(b, a,n);
mag = abs(h);
phase = angle(h)*180/pi;
subplot(2, 1, 1); plot(w/(2*pi)*fs, mag), grid on;
title ('������ ��� �������');
xlabel ('');
ylabel ('');
subplot(2, 1, 2); plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title ('������ ��� �������')
xlabel ('');
ylabel ('');
... ������ ���������� ���� �������