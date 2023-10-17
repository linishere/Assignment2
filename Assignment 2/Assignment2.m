%%% Problem 1
format short;
%% 1a
theta = pi/4
v = [7, -3]
A = [cos(theta), -sin(theta); cos(theta), sin(theta)]
Av = A .* v
%% 1b 
k = 3
v = [7, -3]
B = [1, k; 0, 1]
Bv = B .* v
%% 1c
AB = Av .* Bv
BA = Bv .* Av 
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
YIQ = [0.299 0.587 0.114; 0.596 -0.275 -0.321; 0.212 -0.523 0.311]
RGB = inv(YIQ)
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

%% Problem 3
format rat
%% 3a 
A = [-3, 5, 1, -2; -3, -4, 6, 6; 1, 2, 3, 4; -3, -3, 3, 8]
B = [1, -2, -3, -4; 6, 0, 1, 2; -6, 9, 5, 6; 2, 0, 4, 4]
%% 3b 
det_A = det(A)
det_B = det(B)
inv_det_AB = det(inv(A*B))
%% 3c
disp('According to the theorems from class, (AB)^-1 = B^-1 * A^-1');
disp('det((AB)^-1) = det(B^-1 * A^-1) = det(B^-1)*det(A^-1) = (1/det(B)) * (1/det(A))');
inv_det_AB_2 = (1/det_A) * (1/det_B)
disp('this matches the answer from the previous part.');

%% 3d
disp('part i');
disp('det(ACB)=det(A)*det(B)*det(C)');
result = det(A) * det(B) * 10 

disp('part ii');
disp('det(7C) = 7^n *  det(C) = 7^4 * det(C)');
result = 7^4 * 10

disp('part iii');
disp('det(C^2*A^-2) = det(C)*det(C)*(1/det(A))');
result = 10 * 10 * (1/det(A))

%% Problem 4
%% 4a
disp('they are NOT equal')
A = [1, 2, 3; 4, 5, 6; 7, 8, 9]
B = [0, 1, 0; 0, 0, 1; 0, 0, 0]

result1 = (A-B)*(A-B)
result2 = A*A - 2*A*B + B*B

%% 4b
disp('they ARE equal')
C = [1, 0, 0; 0, 1, 0; 0, 0, 1]
D = [1, 0, 0; 1, 0, 0; 1, 0, 0]

result1 = (C-D)*(C-D)
result2 = C*C - 2*C*D + D*D

%% 4c
disp('No, it is not always true. Here is an example where it fails:')
A1 = [2, 1; 1, 2]
B1 = [1, 2; 2, 1]
C1 = [1, 1; 1, 1]

AC = A1*C1
BC = B1*C1

disp('A1*C1 = B1*C1, but A1 is NOT equal to B1')

%% Problem 5
format rat 
%% 5a
syms x
%% 5b
A = [2*x+1, x, x+2; x+2, -2*x, -1*x-3; 2*x-1, x, 3*x];
det(A)
equ = det(A) == 0;
values_of_x_where_A_no_inverse = solve(equ, x)
%% 5c

