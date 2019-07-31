function [erro, peso] = avaliar(s, mochila, objetos)

PENALIDADE_ERRO = 10;
peso = 0;
for i=1:size(objetos, 2)
    if (s(i) == 1)
        peso = peso + objetos(i);
    end
end
erro = abs(mochila - peso);
if (peso > mochila)
    erro = erro * PENALIDADE_ERRO;
end

end
