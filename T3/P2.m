%%
%3.a
lambda = [1; 5; 5; 10];
miu = [100; 50; 50; 20];
sum = 0;
for i = 1 : 4
   sum = sum + (prod(lambda(1:i)) / prod(miu(1:i)));
end

pi0 = 1 / (1 + sum);
pi = [
pi0;
((lambda(1))/(miu(1)))*pi0;
((prod(lambda(1:2)))/(prod(miu(1:2))))*pi0;
((prod(lambda(1:3)))/(prod(miu(1:3))))*pi0;
((prod(lambda(1:4)))/(prod(miu(1:4))))*pi0
];

    
disp('3a:')
fprintf('pi0 = %.4e\n', pi(1)*100)
fprintf('pi1 = %.4e\n', pi(2)*100)
fprintf('pi2 = %.4e\n', pi(3)*100)
fprintf('pi3 = %.4e\n', pi(4)*100)
fprintf('pi4 = %.4e\n', pi(5)*100)

%%
%3.b
ber = [10^-5 10^-4 10^-3 10^-2 10^-1];
average = ber*pi;
fprintf('\n3b: \n')
fprintf('average = %.4e\n', average)

%%
%3.c
time = pi * 60;
fprintf('\n3c:\n')
fprintf('time0 = %.4f\n', 1*60)
fprintf('time1 = %.4f\n', (1/105)*60)
fprintf('time2 = %.4f\n', (1/55)*60)
fprintf('time3 = %.4f\n', (1/60)*60)
fprintf('time4 = %.4f\n', (1/20)*60)

%%
%3.d
interference = (pi(5) + pi(4)) * 100;
fprintf('\n3d: \n')
fprintf('Probability of beeing in interference state: %.5e%%\n', interference);