image = imread('Surrounding2.png');
grayimage = rgb2gray(image);
bwimage = grayimage < 100;
grid = binaryOccupancyMap(bwimage,4.14375);
grid.GridOriginInLocal= [-80 -80];
prm = mobileRobotPRM;
prm.Map = grid;
prm.NumNodes = 500;
prm.ConnectionDistance = 20;
start = [-2 -2; 0 0; 2 2];
goalN = [0 68];
goalS = [0 -68];
goalE = [68 0];
goalW = [-68 0];

pathN1 = findpath(prm, start(1,:), goalN);
show(prm);
pathN2 = findpath(prm, start(2,:), goalN);
figure
show(prm);
pathN3 = findpath(prm, start(3,:), goalN);
figure
show(prm);
pathS1 = findpath(prm, start(1,:), goalS);
figure
show(prm);
pathS2 = findpath(prm, start(2,:), goalS);
figure
show(prm);
pathS3 = findpath(prm, start(3,:), goalS);
figure
show(prm);
pathE1 = findpath(prm, start(1,:), goalE);
figure
show(prm);
pathE2 = findpath(prm, start(2,:), goalE);
figure
show(prm);
pathE3 = findpath(prm, start(3,:), goalE);
figure
show(prm);
pathW1 = findpath(prm, start(1,:), goalW);
figure
show(prm);
pathW2 = findpath(prm, start(2,:), goalW);
figure
show(prm);
pathW3 = findpath(prm, start(3,:), goalW);
figure
show(prm);
