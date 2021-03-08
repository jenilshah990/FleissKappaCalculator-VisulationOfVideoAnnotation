% Syntax: 	fleiss(k, X, alpha, label, rubric_version, video_name)
%      
%     Inputs:
%           k = number of categories
%           X = square data matrix the annotations as a nxm matrix 
%               where n = number of labellers & m = frames. 
%               The (i,j) entry represents the category {1,2,3,4...} the 
%               ith labeller put for the jth frame. 
%           alpha = Significance Level
%           Label = The label being labelled
%           Rubric_version = Version of the Rubric
%           Video_name = Name of the Video 
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

function fleiss(k, matrix, alpha, label, rubric_version, video_name, labelers)
n=size(matrix, 1); %Number of Labellers
matrix(matrix(:) == 10) = k; %Changing 10 to highest value k
visualisation(matrix,n, label, rubric_version, video_name, labelers); 
F = Create_Fleiss_Matrix(k,matrix);
%figure
temp = F;
heat_map(temp, k, label, rubric_version, video_name);
%figure
fleiss_score(F,alpha, label, video_name);
fclose('all');
end
