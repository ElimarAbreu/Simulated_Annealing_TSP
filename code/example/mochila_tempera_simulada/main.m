clear; clc; close all;

%% Parametros

MOCHILA = 100;
QTD_OBJETOS = 150;
PESO_MIN = 1;
PESO_MAX = 100;
N_ITER = 500;

objetos = randi([PESO_MIN PESO_MAX], 1, QTD_OBJETOS);

%% Execucao

busca_gulosa(MOCHILA, objetos, N_ITER);
