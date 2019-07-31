function [ns] = gerar_vizinhos(s, L)

ns = zeros(L, size(s, 2));

for i=1:L
    eh_repetido = 0;
    aux = perturbar(s);
    if (isequal(aux, s))
        i = i - 1;
        continue;
    end
    for j=1:i-1
        if (isequal(aux, ns(j, :)))
            i = i - 1; % Refaz a perturbacao
            eh_repetido = 1;
            break;
        end
    end
    if (~eh_repetido)
        ns(i, :) = aux;
    end
    [s ; ns]
end

end
