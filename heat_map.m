function [] = heat_map(matrix,n, label, rubric_version, video_name)
%Matrix = Fleiss_kappa_Matrix
%Creating Heat Map
matrix2 = transpose(matrix);
imagesc(matrix2);

%Reformats video name so _ doesn't become subscript
v_name = '';
i = 1;
while i <= length(video_name)
    if video_name(i) == '_'
        v_name = strcat(v_name, '\_');
        i = i + 1;
    end
    v_name = strcat(v_name, video_name(i));
    i = i + 1;
end

title(strcat({'Heatmap, '}, label, {', '}, rubric_version, {', '}, v_name));
colorbar;
colormap(autumn);
xlabel('Frames (x2 for Face, x7 for Cabin)');
ylabel('Label Categories');
for i=0.5:1:(n-0.5)
    yline(i);
end

yl = ylim;
yticks(1:1:yl(2)-0.5);

filename = strcat(label, '-heat');
%saveas(gcf,filename,'png');
disp(strcat('Saved file: ', filename, '.png'))

%Saves picture directly to predefined result directory
filePath = strcat(video_name, "-results", '/', filename, '.png');
saveas(gcf, [filePath]);

end
