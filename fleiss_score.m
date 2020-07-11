% Calculate Fleiss Score
% Syntax: 	fleiss_score(X)
%      
%     Inputs:
%           X - square data matrix
%     Outputs:
%           - Overall Fleiss Kappa value (score)
%           - Percent Overall Agreement (p_bar)

function score = fleiss_score(x)
format short;
%check if the raters are the same for each rows
r=sum(x,2);
if any(r-max(r))
    error('The raters are not the same for each rows')
end

N=size(x,1); %frames
n=sum(x(1,:)); %raters
a=n*N; %Sum of all cells

%Calculate pj & pe_bar
pj=(sum(x)./(a));  
pe_bar = sum(pj.^2);

%Calculate Pi & p_bar
pi = (sum(x.^2,2) - n)./(n*(n-1));
p_bar = sum(pi)./N;
score = (p_bar - pe_bar)./(1-pe_bar);

%Display Results
fprintf('Percent Overall Agreement: %0.4f\n%p_bar', p_bar); 
fprintf('Overall Fleiss Kappa Score: %0.4f\n', score);

end