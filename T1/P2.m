%%
%1.a
q=10^(-5);
f0= probBinRand(100, 0, q);
f1= probBinRand(100, 1, q);
f2= 1 - f0 - f1;

%%
%1.b
q=10^(-5);
B=64;
f0= 1 - probBinRand(B, 0, q) - probBinRand(B, 1, q);

B=1500;
f1= 1 - probBinRand(B, 0, q) - probBinRand(B, 1, q);

ft = f0*0.1 + f1*0.9;

%%
%1.c
q=10^(-7);
f = 0;
for i=0:1000
    f0= 1 - probBinRand(64+i, 0, q) - probBinRand(64+i, 1, q);
    f1= probGeoRand(0.02, i);
    f = f + f0 * f1;
end
f;

%%
%1.d
q=10^(-5);
B=64;
f0= 1 - probBinRand(B-28, 0, q);

B=1500;
f1= 1 - probBinRand(B-28, 0, q);

ft = f0*0.1 + f1*0.9;

f = 0;
for i=0:1000
    f0= 1 - probBinRand(64-28+i, 0, q);
    f1= probGeoRand(0.02, i);
    f = f + f0 * f1;
end
ft;
f;

%%
%2.a
p = 0.99999;
pn = p;
pi = 1-p;

pen = 0.0001;
pei = 0.5;

pne = pen * pn / (pen*pn+pei*pi);
pie = 1-pne;

%%
%2.b











