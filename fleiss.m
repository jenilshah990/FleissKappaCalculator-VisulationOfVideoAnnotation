% Syntax: 	fleiss(k, X, alpha)
%      
%     Inputs:
%           k = number of labellers
%           X = square data matrix the annotations as a nxm matrix 
%               where n = number of labellers & m = frames. 
%               The (i,j) entry represents the category {1,2,3,4...} the 
%               ith labeller put for the jth frame. 
%           alpha = significance level
%
%     Outputs:
%           - Visualisation of The Annotation Matrix
%           - Fleiss Matrix
%           - Overall Fleiss Kappa value (score)
%           - Percent Overall Agreement (p_bar)
%           - Kappa standard error
%           - Kappa confidence interval
%           - Kappa benchmarks by Landis and Koch 
%           - z test & P Value


function fleiss(k, matrix, alpha) 
visualisation(matrix,k);
matrix(matrix(:) == 10) = k; %Changes the values of unlabelled ie. 10 to the last category ie. k
F = Create_Fleiss_Matrix(k,matrix);
y = fleiss_score(F,alpha);
end




    

