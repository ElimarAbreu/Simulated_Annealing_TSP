clear; close all; clc;

%% Parametros

temp_i = 0;
temp_f = 0;
temp = 0;
s_f = 0;
L = 10;

%% Base de dados

M1 = matrizdistancia('tests/att48.txt');
%M2 = matrizdistancia('tests/att532.txt');

s = criar_solucao(10, 1)

ns = gerar_vizinhos(s, 10);

[s ; ns]

%% Otimizar

%o = otimizar(temp_i, temp_f, M1, L);
