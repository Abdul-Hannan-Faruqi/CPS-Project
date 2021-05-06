Camera.time = t;
Camera.signals.values = [cam(2,:)',cam(3,:)',cam(1,:)'];
Camera.signals.dimensions = 3;

Rot.time = t;
Rot.signals.values = [cam(4,:)',cam(5,:)',cam(6,:)',cam(7,:)'];
Rot.signals.dimensions = 4;