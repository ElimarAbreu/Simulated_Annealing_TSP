function s = perturbar(s)

pos = randperm(size(s, 2), 2);
s([pos(1) pos(2)]) = s([pos(2) pos(1)]);

end
