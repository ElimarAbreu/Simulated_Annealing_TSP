function s = perturbar(s)

pos = randi([1, size(s, 2)]);
if (s(pos) == 1)
    s(pos) = 0;
else
    s(pos) = 1;
end

end
