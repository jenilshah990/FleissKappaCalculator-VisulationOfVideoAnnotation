function [] = visualisation(matrix,k)
imagesc(matrix);
colorbar;
xlabel('Frames');
ylabel('Labellers');
for i=0.5:1:(k-0.5)
    yline(i);
end


