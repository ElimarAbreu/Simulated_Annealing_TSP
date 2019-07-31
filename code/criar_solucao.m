function s = criar_solucao(tam, cidade_inicial)

s = randperm(tam);

% Modifica cidade inicial
for i=1:tam
    cidade = s(i);
    if (s(i) == cidade_inicial)
        aux = s(1);
        s(i) = aux;
        s(1) = cidade;
    end
end

end
