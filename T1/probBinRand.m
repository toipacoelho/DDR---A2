function f = probBinRand(B, i, q)
    n=B*8;
    f = nchoosek(n, i)*q^i*(1-q)^(n-i);
end