function [] = visualisation(matrix,k)
imagesc(matrix);
xlabel('Frames');
ylabel('Labellers');
for i=0.5:1:(k-0.5)
    yline(i);
end


