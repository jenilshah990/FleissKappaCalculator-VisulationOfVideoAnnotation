function [] = heat_map(matrix,n, label, rubric_version, video_name)
%Matrix = Fleiss_kappa_Matrix
%Creating Heat Map
matrix2 = transpose(matrix);
imagesc(matrix2);
title(strcat({'Heatmap, '}, label, {', '}, int2str(rubric_version), {', '}, video_name));
colorbar;
colormap(autumn);
xlabel('Frames');
ylabel('Categories');
for i=0.5:1:(n-0.5)
    yline(i);
end
filename = strcat(label, '-heat');
saveas(gcf,filename,'png');
disp(strcat('Saved file: ', filename)) 
end
