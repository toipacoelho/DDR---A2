%%
%2.a
PEN = 0.0001;  % P(E/F1)
PEI = 0.5;     % P(E/F2)
p = [0.99 0.999 0.9999 0.99999];
for i = 1:length(p)
    pn = p(i);        % P(F1)
    pi = 1-p(i);      % P(F2)

    PNE(i) = (PEN * pn /((PEN * pn)+(PEI*pi)))*100;   %p(normal)
    PNI(i) = (PEI * pi /((PEN * pn)+(PEI*pi)))*100;   %p(interference)
end

PNE
PNI

%%
%2.b
p = [0.99 0.999 0.9999 0.99999];
n = [2,3,4];
FalsePositive = zeros(length(n) * length(p), 1);
FalseNegative = zeros(length(n) * length(p), 1);
for j = 1:length(p)
    for i = 1 :length(n)
        PEN = 0.0001^n(i);  % probabilidade binomial
        PEI = 0.5^n(i);
        pn = p(j);        % P(F1)
        pi = 1-p(j);      % P(F2)

        FalsePositive(i + (j-1)*length(n)) = (PEN * pn /((PEN * pn)+(PEI*pi)))*100;
        FalseNegative(i + (j-1)*length(n)) = (PEI * pi /((PEN * pn)+(PEI*pi)))*100;
    end
end

FalsePositive
FalseNegative



%%

%2.c
p = [0.99 0.999 0.9999 0.99999];
n = [2,3,4];
FalsePositive = zeros(length(n) * length(p), 1);
FalseNegative = zeros(length(n) * length(p), 1);
for j = 1:length(p)
    for i = 1 :length(n)
        PEN = 0.0001^n(i);  % probabilidade binomial
        PEI = 0.5^n(i);
        pn = p(j);        % P(F1)
        pi = 1-p(j);      % P(F2)

        FalsePositive(i + (j-1)*length(n)) = (PEN * pn /((PEN * pn)+(PEI*pi)))*100;

        PEN = 1- (0.0001^n(i));  % probabilidade binomial
        PEI = 1- (0.5^n(i));

        FalseNegative(i + (j-1)*length(n)) = (PEI * pi /((PEN * pn)+(PEI*pi)))*100;
    end
end

FalsePositive
FalseNegative
