function s = busca_gulosa(mochila, objetos, num_iter)

tam = size(objetos, 2);
s = criar_solucao(tam);
erro_s = avaliar(s, mochila, objetos);
historico = zeros(1, num_iter);
for i=1:num_iter
    v = perturbar(s);
    erro_v = avaliar(v, mochila, objetos);
    if (erro_v < erro_s)
        s = v;
        erro_s = erro_v;
    end
    historico(i) = erro_s;
    disp([num2str(i), ' iteracao.   Erro: ', num2str(erro_s)]);
end
mostrar_solucao(s, mochila, objetos);
plot(historico);

end
