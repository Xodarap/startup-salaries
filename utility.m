function U = utility(income, gamma)
%utility
%gamma is how risk averse you are: negative is risk-seeking, positive is
%risk-averse

income = income + 3e6; %3e6 = 3 million, Ben.

if gamma~=1
    U = (income.^(1-gamma))./(1-gamma);
else
    U = log(income);
end

end

