% useful tips:
% 1. you can use the command "close all" to close all figures
% 2. to download results folder, create a zip file, then navigate to home bar
% select the zip file, then click download
% 3. you can use clc to clear command window too

prompt = 'Rubric version: (vX)';
version = input(prompt, 's');

prompt = 'Video number: (V_XXX_XXX_XXXX)';
v_num = input(prompt, 's');

prompt = 'Number of Cabin Rows: (Excel Rows in Cabin Rubric - 1)';
cabin_rows = input(prompt);

prompt = 'Number of Face Rows: (Excel Rows in Face Rubric - 1)';
face_rows = input(prompt);

prompt = 'List all labelers in this format: {''name1'', ''name2'', ...}';
labelers = input(prompt);

% combine everyone's label columns into their corresponding matrices
% change the first argument of zeros() to match the number of rows/frames
% labeled for face and cabin (# of rows in excel sheet (-1))
num_labelers = length(labelers);
obj_left = zeros(cabin_rows, num_labelers);
obj_right = zeros(cabin_rows, num_labelers);
manipulation = zeros(cabin_rows, num_labelers);
state = zeros(cabin_rows, num_labelers);
occlusion = zeros(cabin_rows, num_labelers);
head_tilt = zeros(face_rows, num_labelers);
head_pan = zeros(face_rows, num_labelers);
gaze = zeros(face_rows, num_labelers);
% special labels: one-time labels have 1 row, face occlusion
face_difficulty = zeros(1, num_labelers);
lighting = zeros(1, num_labelers);
face_occlusion = zeros(4, num_labelers);
people = zeros(1, num_labelers);
type = zeros(1, num_labelers);
cabin_difficulty = zeros(1, num_labelers);

disp('Extracting Excel Spreadsheet Data...')
for i = 1:num_labelers
    % file path to extract spreadsheet data from
    fileCabin = strcat(v_num, '/', labelers(i), "_Cabin_Coding_Rubric.xlsx");
    fileFace = strcat(v_num, '/',labelers(i), "_Face_Coding_Rubric.xlsx");
    % parse each column from original face .xlsx files
    % cabin labels
    obj_left(:,i) = xlsread(fileCabin, "B:B");
    obj_right(:,i) = xlsread(fileCabin, "C:C");
    manipulation(:,i) = xlsread(fileCabin, "D:D");
    state(:,i) = xlsread(fileCabin, "E:E");
    occlusion(:,i) = xlsread(fileCabin, "F:F");
    type(:,i) = xlsread(fileCabin, "H:H");
    cabin_difficulty(:,i) = xlsread(fileCabin, "I:I");
    % face labels
    head_tilt(:,i) = xlsread(fileFace, "B:B");
    head_pan(:,i) = xlsread(fileFace, "C:C");
    gaze(:,i) = xlsread(fileFace, "D:D");
    lighting(:,i) = xlsread(fileFace, "F:F");
    people(:,i) = xlsread(fileFace, "G:G");
    face_occlusion(:,i) = xlsread(fileFace, "H:H");
    face_difficulty(:,i) = xlsread(fileFace, "I:I");
end

% missing mode common option here
obj_left(:,num_labelers + 1) = mode(obj_left(:,1:num_labelers), 2);
obj_right(:,num_labelers + 1) = mode(obj_right(:,1:num_labelers), 2);
manipulation(:,num_labelers + 1) = mode(manipulation(:,1:num_labelers), 2);
state(:,num_labelers + 1) = mode(state(:,1:num_labelers), 2);
occlusion(:,num_labelers + 1) = mode(occlusion(:,1:num_labelers), 2);
head_tilt(:,num_labelers + 1) = mode(head_tilt(:,1:num_labelers), 2);
head_pan(:,num_labelers + 1) = mode(head_pan(:,1:num_labelers), 2);
gaze(:,num_labelers + 1) = mode(gaze(:,1:num_labelers), 2);
face_difficulty(:,num_labelers + 1) = mode(face_difficulty(:,1:num_labelers), 2);
lighting(:,num_labelers + 1) = mode(lighting(:,1:num_labelers), 2);
face_occlusion(:,num_labelers + 1) = mode(face_occlusion(:,1:num_labelers), 2);
people(:,num_labelers + 1) = mode(people(:,1:num_labelers), 2);
type(:,num_labelers + 1) = mode(type(:,1:num_labelers), 2);
cabin_difficulty(:,num_labelers + 1) = mode(cabin_difficulty(:,1:num_labelers), 2);

% not sure what this does but okay
obj_left = obj_left';
obj_right = obj_right';
manipulation = manipulation';
state = state';
occlusion = occlusion';
head_tilt = head_tilt';
head_pan = head_pan';
gaze = gaze';
face_difficulty = face_difficulty';
lighting = lighting';
face_occlusion = face_occlusion';
people = people';
type = type';
cabin_difficulty = cabin_difficulty';

% create a directory to store results
dirName = strcat(v_num, "-results");
mkdir(dirName);

% generate fleiss kappa scores + visualizations for each label
% first argument is # label options + 1 to account for unlabelable option
% third argument is the significance level
disp('Calculating Fleiss Scores...')
fleiss(7, obj_left, 0.05, "ObjHandLeft", version, v_num, labelers);
fleiss(7, obj_right, 0.05, "ObjHandRight", version, v_num, labelers);
fleiss(4, manipulation, 0.05, "Manipulation", version, v_num, labelers);
fleiss(5, state, 0.05, "State", version, v_num, labelers);
fleiss(3, occlusion, 0.05, "Occlusion", version, v_num, labelers);
fleiss(5, type, 0.05, "PhoneType", version, v_num, labelers);
fleiss(3, cabin_difficulty, 0.05, "CabinDifficulty", version, v_num, labelers);
fleiss(4, head_tilt, 0.05, "HeadTilt", version, v_num, labelers);
fleiss(4, head_pan, 0.05, "HeadPan", version, v_num, labelers);
fleiss(7, gaze, 0.05, "Gaze", version, v_num, labelers);
fleiss(3, face_difficulty, 0.05, "FaceDifficulty", version, v_num, labelers);
fleiss(3, lighting, 0.05, "Lighting", version, v_num, labelers);
fleiss(5, face_occlusion, 0.05, "FacialOcclusion", version, v_num, labelers);
fleiss(3, people, 0.05, "NumberOfPeople", version, v_num, labelers);
