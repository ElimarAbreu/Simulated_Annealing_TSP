function mostrar_solucao(s, mochila, objetos)

disp("Solucao: ");
for i=1:size(s, 2)
    if (s(i) == 1)
        disp([num2str(i), "[", num2str(objetos(i)), "]"]);
    end
end
disp(["Peso carregado: ", num2str(pesar(s, mochila, objetos))]);

end
