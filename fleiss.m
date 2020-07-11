% k = Number of categories
% matrix = Labelled Video Matrix


function y = fleiss(k, matrix) 
visualisation(matrix,k);
F = Create_Fleiss_Matrix(k,matrix);
y = fleiss_score(F);
end




    

