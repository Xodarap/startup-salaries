randomWealth = rand(1)*1e6;
% assert(utility(randomWealth,0)==randomWealth+3e6);

% assert(certainIncomeEquiv(randomWealth,0)==randomWealth);

% assert(certainIncomeEquiv(randomWealth,1)~=randomWealth);

% clear;
% income = 1e6;
% x = 0:.1:3;
% for i=1:length(x)
%     U(i) = utility(income*2,x(i))/utility(income,x(i));
% end
% plot(x,U); xlabel('risk aversion');
% ylabel('Change in utility');

gamma = 0:3;
N = length(gamma);
equivalents = zeros(N,3);
equivalents(:,1) = gamma;
for i=1:N
    equivalents(i,2) = certainIncomeEquiv(gamma(i),0,1);
    equivalents(i,3) = certainIncomeEquiv(gamma(i),110000*8,.05);
end
equivalents
