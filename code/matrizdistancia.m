function m_distancia = matrizdistancia(fname)

base_dados = fopen(fname);
m_base_dados = fscanf(base_dados,'%*d %d %d', [2 inf]);
%m_base_dados = fscanf(base_dados,'%d %d %d', [3 inf]);
%m_base_dados = fscanf(base_dados,'%d %d', [2 inf]);
fclose(base_dados);
m_base_dados = m_base_dados';
m_distancia = zeros(size(m_base_dados,1), size(m_base_dados,1));

for i=1:size(m_base_dados,1)
    for j=1:size(m_base_dados,1)
       m_distancia(i, j) = sqrt((m_base_dados(i,1)- m_base_dados(j,1))^2 + (m_base_dados(i,2)- m_base_dados(j,2))^2);
    end
end

end
