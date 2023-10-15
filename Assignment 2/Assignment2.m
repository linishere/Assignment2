%%% Problem 1
format short;
%% 1a
theta = pi/4;
v = [7, -3];
A = [cos(theta), -sin(theta); cos(theta), sin(theta)];
Av = A .* v; 
%% 1b 
k = 3; 
v = [7, -3]; 
B = [1, k; 0, 1]; 
Bv = B .* v; 
%% 1c
AB = Av .* Bv; 
BA = Bv .* Av; 
%% 1d
% Check back
disp('When you apply transformations AB (shear followed by rotation):');
disp('The order matters, and the result is different from BA.');

disp('When you apply transformations BA (rotation followed by shear):');
disp('The order matters, and the result is different from AB.');
%% 1e
% Check back 
disp("YES");

%%% Problem 2
%% 2a 
YIQ = [0.299 0.587 0.114; 0.596 -0.275 -0.321; 0.212 -0.523 0.311];
RGB = inv(YIQ);
%% 2b
% done
%% 2c
rgbflint=imread('flintstones.jpg');
%% 2d
yiqflint = rgb2ntsc(rgbflint);
%% 2e
imshow(yiqflint(:,:,1)); 
%% 2f
new = ntsc2rgb(yiqflint); 
figure
imshow(new)

%%% Problem 3
format rat
%% 3a 
A = [-3, 5, 1, -2; -3, -4, 6, 6; 1, 2, 3, 4; -3, -3, 3, 8];
B = [1, -2, -3, -4; 6, 0, 1, 2; -6, 9, 5, 6; 2, 0, 4, 4]; 
%% 3b 
det_A = det(A);
det_B = det(B);
det_AB = det(A*B); 
inv_det_AB = 1 / det_AB; 
%% 3c

%% 3d

%%% Problem 4
%% 4a

%% 4b

%% 4c

%%% Problem 5
format rat 
%% 5a

%% 5b

%% 5c
