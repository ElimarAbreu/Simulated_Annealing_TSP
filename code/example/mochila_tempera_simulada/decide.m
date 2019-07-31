function solucao = decide(s, v, delta, temp)

p = exp(-delta/temp); % Probabilidade da tempera simulada
x = rand;
if (x <= p)
    solucao = v;
else
    solucao = s;

end
