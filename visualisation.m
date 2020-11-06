function [] = visualisation(matrix,n, label, rubric_version, video_name)
imagesc(matrix);
title(strcat(label, {', '}, int2str(rubric_version), {', '}, video_name));
colorbar;
xlabel('Frames');
ylabel('Labellers');
for i=0.5:1:(n-0.5)
    yline(i);
end
saveas(gcf,label, 'png');
disp(strcat('Saved file : ', label)) 
end
