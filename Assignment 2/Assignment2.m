%This assignment was done by Tal Ledeniov and Lin Miyamoto
%% Problem 1
format short;
%% 1a
theta = pi/4
v = [7; -3]
A = [cos(theta), -sin(theta); sin(theta), cos(theta)]
disp('the transformation:');
Av = A * v
%% 1b 
k = 3
v = [7; -3]
B = [1, k; 0, 1]
disp('the transformation:');
Bv = B * v
%% 1c
disp('first shear, then rotate:');
AB = A * B
disp('first rotate, then shear:');
BA = B * A
%% 1d
disp('When you apply transformations AB (shear followed by rotation):');
disp('The order matters, and the result is different from BA.');
disp(' ');
disp('When you apply transformations BA (rotation followed by shear):');
disp('The order matters, and the result is different from AB.');
disp(' ');
disp('Since swapping the order of the transformations gives two outputs,');
disp('we can therefore say there is no definitive commutative property');
disp('for transformations. Unlike addition and multiplication, the order');
disp('in which you do tranformations is not commutative and CAN have an impact');
disp('on the output. In 1c we see different orders giving different values, but in 1e');
disp('we see an example of a transformation in which order does not matter.');
disp('So we can say that there is no 100% definitive commutative property');
disp('for transformations on vectors.');

%% 1e
disp("YES. If you have a coordinate point (x, y), reflecting it across");
disp("the x axis is just making it (-1*x, y), and reflecting it across");
disp('the y axis is just making it (x, -1*y). One transformation affects');
disp('the x-value of the coordinate, and the other affects the y-value');
disp('of the coordinate. Since they do not impact the same');
disp('value, and therefore will not interfere with each other, the order');
disp('in which you do the transformations does not matter.')

%% Problem 2
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
disp('This matches the answer from the previous part.');

%% 3d
disp('part i');
disp('det(ACB)=det(A)*det(B)*det(C)');
result = det(A) * det(B) * 10 

disp('part ii');
disp('det(7C) = 7^n *  det(C) = 7^4 * det(C)');
result = 7^4 * 10

disp('part iii');
disp('det(C^2*A^-1) = det(C)*det(C)*(1/det(A))');
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
disp('The only time a square matrix can not have an inverse is when its');
disp('determinant is 0. So we use the solve function to solve for values');
disp('of x to make the det(A), which is - 10*x^3 + 6*x, equal to 0.');
equ = det(A) == 0;
disp('these three values make the determinant of A equal to 0, and therefore');
disp('are the values of x where A does NOT have an inverse:');
values_of_x_where_A_no_inverse = solve(equ, x)
%% 5c
disp('The values of x that make A^k not have an inverse are the same as');
disp('the values that make the determinant of A^k equal to 0. So we are solving');
disp('det(A^k) = 0 for all values of x. We learned in class a property of')
disp('determinants that det(AB) = det(A)*det(B), so therefore we can also say');
disp('det(A^k) = det(A)*det(A)* ... * det(A) = (det(A))^k. So we can pull out the k.');
disp('The only way where (det(A))^k = 0 is when det(A) is equal to 0, which');
disp('we already solved for in 5b. Therefore the values of x where A^k has');
disp('no inverse is the three values of x that make det(A) = 0:')
values_of_x_where_A_no_inverse
