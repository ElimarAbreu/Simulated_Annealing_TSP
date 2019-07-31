function [s] = otimizar(temp_i, temp_f, M, L)

s_i = criar_solucao(size(M, 1));
s_f = s_i;
temp = temp_i;
s = s_f;

while (temp_i > temp_f)
    s_aux = gerar_vizinhos(s, L);
    for i=1:size(s_aux, 2)
        
    end
end

end
