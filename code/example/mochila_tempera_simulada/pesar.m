function peso = pesar(s, ~, objetos)

peso = 0;
for i=1:size(objetos, 2)
    if (s(i) == 1)
        peso = peso + objetos(i);
    end
end

end
