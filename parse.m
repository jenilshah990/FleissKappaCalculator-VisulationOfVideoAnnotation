disp('cp0')
% parse each column from original cabin .xlsx files
% labels: obj left, obj right, manipulation, state, occlusion
rubric_version = xlsread("Andrea_Face_Coding_Rubric.xlsx", "S2:S2");
[~, video_name] = xlsread("Andrea_Face_Coding_Rubric.xlsx", "T2:T2");

andrea_cabin_obj_left = xlsread("Andrea_Cabin_Coding_Rubric.xlsx", "B:B");
david_cabin_obj_left = xlsread("David_Cabin_Coding_Rubric.xlsx", "B:B");
haomeng_cabin_obj_left = xlsread("Haomeng_Cabin_Coding_Rubric.xlsx", "B:B");
nithin_cabin_obj_left = xlsread("Nithin_Cabin_Coding_Rubric.xlsx", "B:B");
ruma_cabin_obj_left = xlsread("Ruma_Cabin_Coding_Rubric.xlsx", "B:B");
andrea_cabin_obj_right = xlsread("Andrea_Cabin_Coding_Rubric.xlsx", "D:D");
david_cabin_obj_right = xlsread("David_Cabin_Coding_Rubric.xlsx", "D:D");
haomeng_cabin_obj_right = xlsread("Haomeng_Cabin_Coding_Rubric.xlsx", "D:D");
nithin_cabin_obj_right = xlsread("Nithin_Cabin_Coding_Rubric.xlsx", "D:D");
ruma_cabin_obj_right = xlsread("Ruma_Cabin_Coding_Rubric.xlsx", "D:D");
andrea_cabin_manipulation = xlsread("Andrea_Cabin_Coding_Rubric.xlsx", "F:F");
david_cabin_manipulation = xlsread("David_Cabin_Coding_Rubric.xlsx", "F:F");
haomeng_cabin_manipulation = xlsread("Haomeng_Cabin_Coding_Rubric.xlsx", "F:F");
nithin_cabin_manipulation = xlsread("Nithin_Cabin_Coding_Rubric.xlsx", "F:F");
ruma_cabin_manipulation = xlsread("Ruma_Cabin_Coding_Rubric.xlsx", "F:F");

andrea_cabin_state = xlsread("Andrea_Cabin_Coding_Rubric.xlsx", "H:H");
david_cabin_state = xlsread("David_Cabin_Coding_Rubric.xlsx", "H:H");
haomeng_cabin_state = xlsread("Haomeng_Cabin_Coding_Rubric.xlsx", "H:H");
nithin_cabin_state = xlsread("Nithin_Cabin_Coding_Rubric.xlsx", "H:H");
ruma_cabin_state = xlsread("Ruma_Cabin_Coding_Rubric.xlsx", "H:H");
andrea_cabin_occlusion = xlsread("Andrea_Cabin_Coding_Rubric.xlsx", "J:J");
david_cabin_occlusion = xlsread("David_Cabin_Coding_Rubric.xlsx", "J:J");
haomeng_cabin_occlusion = xlsread("Haomeng_Cabin_Coding_Rubric.xlsx", "J:J");
nithin_cabin_occlusion = xlsread("Nithin_Cabin_Coding_Rubric.xlsx", "J:J");
ruma_cabin_occlusion = xlsread("Ruma_Cabin_Coding_Rubric.xlsx", "J:J");
andrea_cabin_type = xlsread("Andrea_Cabin_Coding_Rubric.xlsx", "L:L");
david_cabin_type = xlsread("David_Cabin_Coding_Rubric.xlsx", "L:L");
haomeng_cabin_type = xlsread("Haomeng_Cabin_Coding_Rubric.xlsx", "L:L");
nithin_cabin_type = xlsread("Nithin_Cabin_Coding_Rubric.xlsx", "L:L");
ruma_cabin_type = xlsread("Ruma_Cabin_Coding_Rubric.xlsx", "L:L");

% parse each column from original face .xlsx files
% labels: head tilt, head pan, mouth, gaze, difficulty, lighting,
%         occlusion, num people
andrea_face_head_tilt = xlsread("Andrea_Face_Coding_Rubric.xlsx", "B:B");
david_face_head_tilt = xlsread("David_Face_Coding_Rubric.xlsx", "B:B");
haomeng_face_head_tilt = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "B:B");
nithin_face_head_tilt = xlsread("Nithin_Face_Coding_Rubric.xlsx", "B:B");
ruma_face_head_tilt = xlsread("Ruma_Face_Coding_Rubric.xlsx", "B:B");
andrea_face_head_pan = xlsread("Andrea_Face_Coding_Rubric.xlsx", "D:D");
david_face_head_pan = xlsread("David_Face_Coding_Rubric.xlsx", "D:D");
haomeng_face_head_pan = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "D:D");
nithin_face_head_pan = xlsread("Nithin_Face_Coding_Rubric.xlsx", "D:D");
ruma_face_head_pan = xlsread("Ruma_Face_Coding_Rubric.xlsx", "D:D");
andrea_face_mouth = xlsread("Andrea_Face_Coding_Rubric.xlsx", "F:F");
david_face_mouth = xlsread("David_Face_Coding_Rubric.xlsx", "F:F");
haomeng_face_mouth = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "F:F");
nithin_face_mouth = xlsread("Nithin_Face_Coding_Rubric.xlsx", "F:F");
ruma_face_mouth = xlsread("Ruma_Face_Coding_Rubric.xlsx", "F:F");
andrea_face_gaze = xlsread("Andrea_Face_Coding_Rubric.xlsx", "H:H");
david_face_gaze = xlsread("David_Face_Coding_Rubric.xlsx", "H:H");
haomeng_face_gaze = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "H:H");
nithin_face_gaze = xlsread("Nithin_Face_Coding_Rubric.xlsx", "H:H");
ruma_face_gaze = xlsread("Ruma_Face_Coding_Rubric.xlsx", "H:H");
andrea_face_difficulty = xlsread("Andrea_Face_Coding_Rubric.xlsx", "K:K");
david_face_difficulty = xlsread("David_Face_Coding_Rubric.xlsx", "K:K");
haomeng_face_difficulty = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "K:K");
nithin_face_difficulty = xlsread("Nithin_Face_Coding_Rubric.xlsx", "K:K");
ruma_face_difficulty = xlsread("Ruma_Face_Coding_Rubric.xlsx", "K:K");
andrea_face_lighting = xlsread("Andrea_Face_Coding_Rubric.xlsx", "M:M");
david_face_lighting = xlsread("David_Face_Coding_Rubric.xlsx", "M:M");
haomeng_face_lighting = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "M:M");
nithin_face_lighting = xlsread("Nithin_Face_Coding_Rubric.xlsx", "M:M");
ruma_face_lighting = xlsread("Ruma_Face_Coding_Rubric.xlsx", "M:M");
andrea_face_occlusion = xlsread("Andrea_Face_Coding_Rubric.xlsx", "O:O");
david_face_occlusion = xlsread("David_Face_Coding_Rubric.xlsx", "O:O");
haomeng_face_occlusion = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "O:O");
nithin_face_occlusion = xlsread("Nithin_Face_Coding_Rubric.xlsx", "O:O");
ruma_face_occlusion = xlsread("Ruma_Face_Coding_Rubric.xlsx", "O:O");
andrea_face_people = xlsread("Andrea_Face_Coding_Rubric.xlsx", "Q:Q");
david_face_people = xlsread("David_Face_Coding_Rubric.xlsx", "Q:Q");
haomeng_face_people = xlsread("Haomeng_Face_Coding_Rubric.xlsx", "Q:Q");
nithin_face_people = xlsread("Nithin_Face_Coding_Rubric.xlsx", "Q:Q");
ruma_face_people = xlsread("Ruma_Face_Coding_Rubric.xlsx", "Q:Q");
disp('cp1')

% combine everyone's label columns into their corresponding matrices
% change the first argument of zeros() to match the number of rows/frames
% labeled for cabin (# of rows in excel sheet (-1))
cabin_rows = 127;
obj_left = zeros(cabin_rows, 6);
obj_left(:,1) = andrea_cabin_obj_left;
obj_left(:,2) = david_cabin_obj_left;
obj_left(:,3) = haomeng_cabin_obj_left;
obj_left(:,4) = nithin_cabin_obj_left;
obj_left(:,5) = ruma_cabin_obj_left;
obj_left(:,6) = mode(obj_left(:,1:5), 2);
obj_left = obj_left';
disp('cp2')
obj_right = zeros(cabin_rows, 6);
obj_right(:,1) = andrea_cabin_obj_right;
obj_right(:,2) = david_cabin_obj_right;
obj_right(:,3) = haomeng_cabin_obj_right;
obj_right(:,4) = nithin_cabin_obj_right;
obj_right(:,5) = ruma_cabin_obj_right;
obj_right(:,6) = mode(obj_right(:,1:5), 2);
obj_right = obj_right';

manipulation = zeros(cabin_rows, 6);
manipulation(:,1) = andrea_cabin_manipulation;
manipulation(:,2) = david_cabin_manipulation;
manipulation(:,3) = haomeng_cabin_manipulation;
manipulation(:,4) = nithin_cabin_manipulation;
manipulation(:,5) = ruma_cabin_manipulation;
manipulation(:,6) = mode(manipulation(:,1:5), 2);
manipulation = manipulation';

state = zeros(cabin_rows, 6);
state(:,1) = andrea_cabin_state;
state(:,2) = david_cabin_state;
state(:,3) = haomeng_cabin_state;
state(:,4) = nithin_cabin_state;
state(:,5) = ruma_cabin_state;
state(:,6) = mode(state(:,1:5), 2);
state = state';

occlusion = zeros(cabin_rows, 6);
occlusion(:,1) = andrea_cabin_occlusion;
occlusion(:,2) = david_cabin_occlusion;
occlusion(:,3) = haomeng_cabin_occlusion;
occlusion(:,4) = nithin_cabin_occlusion;
occlusion(:,5) = ruma_cabin_occlusion;
occlusion(:,6) = mode(occlusion(:,1:5), 2);
occlusion = occlusion';

% this is a one-time label, so there's one row
type = zeros(1, 6);
type(:,1) = andrea_cabin_type;
type(:,2) = david_cabin_type;
type(:,3) = haomeng_cabin_type;
type(:,4) = nithin_cabin_type;
type(:,5) = ruma_cabin_type;
type(:,6) = mode(type(:,1:5), 2);
type = type';

% change the first argument of zeros() to match the number of rows/frames
% labeled for face (# of rows in excel sheet (-1))
face_rows = 638;
head_tilt = zeros(face_rows, 6);
head_tilt(:,1) = andrea_face_head_tilt;
head_tilt(:,2) = david_face_head_tilt;
head_tilt(:,3) = haomeng_face_head_tilt;
head_tilt(:,4) = nithin_face_head_tilt;
head_tilt(:,5) = ruma_face_head_tilt;
head_tilt(:,6) = mode(head_tilt(:,1:5), 2);
head_tilt = head_tilt';

head_pan = zeros(face_rows, 6);
head_pan(:,1) = andrea_face_head_pan;
head_pan(:,2) = david_face_head_pan;
head_pan(:,3) = haomeng_face_head_pan;
head_pan(:,4) = nithin_face_head_pan;
head_pan(:,5) = ruma_face_head_pan;
head_pan(:,6) = mode(head_pan(:,1:5), 2);
head_pan = head_pan';

mouth = zeros(face_rows, 6);
mouth(:,1) = andrea_face_mouth;
mouth(:,2) = david_face_mouth;
mouth(:,3) = haomeng_face_mouth;
mouth(:,4) = nithin_face_mouth;
mouth(:,5) = ruma_face_mouth;
mouth(:,6) = mode(mouth(:,1:5), 2);
mouth = mouth';

gaze = zeros(face_rows, 6);
gaze(:,1) = andrea_face_gaze;
gaze(:,2) = david_face_gaze;
gaze(:,3) = haomeng_face_gaze;
gaze(:,4) = nithin_face_gaze;
gaze(:,5) = ruma_face_gaze;
gaze(:,6) = mode(gaze(:,1:5), 2);
gaze = gaze';

% this is a one-time label, so there's one row
difficulty = zeros(1, 6);
difficulty(:,1) = andrea_face_difficulty;
difficulty(:,2) = david_face_difficulty;
difficulty(:,3) = haomeng_face_difficulty;
difficulty(:,4) = nithin_face_difficulty;
difficulty(:,5) = ruma_face_difficulty;
difficulty(:,6) = mode(difficulty(:,1:5), 2);
difficulty = difficulty';

% this is a one-time label, so there's one row
lighting = zeros(1, 6);
lighting(:,1) = andrea_face_lighting;
lighting(:,2) = david_face_lighting;
lighting(:,3) = haomeng_face_lighting;
lighting(:,4) = nithin_face_lighting;
lighting(:,5) = ruma_face_lighting;
lighting(:,6) = mode(lighting(:,1:5), 2);
lighting = lighting';

% change the first argument of zeros() to be the max number of face labels
% the labelers have (varies between videos)
face_occlusion = zeros(6, 6);
face_occlusion(:,1) = andrea_face_occlusion;
face_occlusion(:,2) = david_face_occlusion;
face_occlusion(:,3) = haomeng_face_occlusion;
face_occlusion(:,4) = nithin_face_occlusion;
face_occlusion(:,5) = ruma_face_occlusion;
face_occlusion(:,6) = mode(face_occlusion(:,1:5), 2);
face_occlusion = face_occlusion';

% this is a one-time label, so there's one row
people = zeros(1, 6);
people(:,1) = andrea_face_people;
people(:,2) = david_face_people;
people(:,3) = haomeng_face_people;
people(:,4) = nithin_face_people;
people(:,5) = ruma_face_people;
people(:,6) = mode(people(:,1:5), 2);
people = people';

% generate fleiss kappa scores + visualizations for each label
% first argument is # label options + 1 to account for unlabelable option
% third argument is the significance level
fleiss(7, obj_left, 0.05, 'Obj Hand Left', rubric_version, video_name);
fleiss(7, obj_right, 0.05, 'Obj Hand Right', rubric_version, video_name);
fleiss(3, manipulation, 0.05, 'Manipulation', rubric_version, video_name);
fleiss(5, state, 0.05, 'State', rubric_version, video_name);
fleiss(3, occlusion, 0.05, 'Occlusion', rubric_version, video_name);
fleiss(5, type, 0.05, 'Phone Type', rubric_version, video_name);
fleiss(4, head_tilt, 0.05, 'Head Tilt', rubric_version, video_name);
fleiss(5, head_pan, 0.05, 'Head Pan', rubric_version, video_name);
fleiss(3, mouth, 0.05, 'Mouth', rubric_version, video_name);
fleiss(10, gaze, 0.05, 'Gaze', rubric_version, video_name);
fleiss(5, difficulty, 0.05, 'Difficulty', rubric_version, video_name);
fleiss(5, lighting, 0.05, 'Lighting', rubric_version, video_name);
fleiss(8, face_occlusion, 0.05, 'Facial Occlusion', rubric_version, video_name);
fleiss(6, people, 0.05, 'Number of People', rubric_version, video_name);
% figure
