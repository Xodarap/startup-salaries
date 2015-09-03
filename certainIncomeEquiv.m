function CI = certainIncomeEquiv(gamma,guarIncome,relOwner)
%certainIncomeEquiv CI = certainIncomeEquiv(gamma,guarIncome)
%CI = certain income

outcomes = [0	67.4;
1	19.7;
10	8.6;
50	2.4;
100	1.3;
200	0.5;
500	0.1;
1000 0.03];
% outcomes = [.5	67.4;
% 5	19.7;
% 30	8.6;
% 75	2.4;
% 150	1.3;
% 350	0.5;
% 750	0.1;
% 1000 0.03];
outcomes(:,1) = outcomes(:,1)*1e6*relOwner;
outcomes(:,2) = outcomes(:,2)/100;
outcomes(:,1) = outcomes(:,1) + guarIncome;

riskyUtility = dot(utility(outcomes(:,1),gamma),outcomes(:,2));
CI = fzero(@(x) riskyUtility  - utility(x,gamma), 1e6);

end


