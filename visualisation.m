function [] = visualisation(matrix, n, label, rubric_version, video_name, labelers)
imagesc(matrix);

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

title(strcat(label, {', '}, rubric_version, {', '}, v_name));
colorbar;
colormap parula;
xlabel('Frames (x2 for Face, x7 for Cabin)');
%ylabel('Labellers');
for i=0.5:1:(n-0.5)
    yline(i);
end

yticks(1:1:length(labelers) + 1)
labeler = [labelers, {'MODE'}];
yticklabels(labeler)

%saveas(gcf, label, 'png');
%Saves picture directly to predefined result directory
filePath = strcat(video_name, "-results", '/', label, '.png');
saveas(gcf, [filePath]);

disp(strcat('Saved file: ', label, '.png')) 
end
