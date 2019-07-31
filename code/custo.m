function [c, c_valores] = custo(s, m_adj)

tam = size(s, 2);
c_valores = zeros(1, tam);
for n=1:(size(s, 2))
    i = s(n);
    j = s(rem(n, tam)+1);
    c_valores(n) = m_adj(i, j);
end

c = sum(c_valores);

end
