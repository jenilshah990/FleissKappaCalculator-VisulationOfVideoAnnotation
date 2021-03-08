% Create a Fleiss Kappa Matrix from the Labelling Data
% k: Number of categories
% matrix: Matrix of Labelled Data 

function Fleiss_kappa_matrix = Create_Fleiss_Matrix(k, matrix) 
Fleiss_kappa_matrix = zeros(size(matrix,2),k);
for i=1:size(matrix,2)
    for j=1:size(matrix,1)
        Fleiss_kappa_matrix(i, matrix(j,i)) = Fleiss_kappa_matrix(i, matrix(j,i)) + 1;
    end
end
end
