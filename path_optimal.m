image = imread('Surrounding.png');
grayimage = rgb2gray(image);
bwimage = grayimage < 100;
grid = binaryOccupancyMap(bwimage,2);
show(grid)
delay = 1;
wait = 2;
hold on
%326.0916 Drone A 6th point
%156.6492 Drone A 6th point
%Drone C 5th Point 288.848 164.2859
%1st Iteration 
droneA_east_x = [175.9;	176.1834;	206.6026;	248.9218;	259.9;	288.848;	363.6819;	362.5];
droneA_east_y = [147.2;	142.8937;	160.2665;	178.5131;	166.2;	164.2859;	160.6782;	163.4];

droneB_west_x = [188.6;	188.9588;	148.3812;	127.9167;	102.213;	68.7577;	33.2517;	28.49];
droneB_west_y = [168.8;	176.368;	164.4024;	140.6621;	151.4053;	165.9174;	181.9696;	176.9];

droneC_east_x = [200;	204.6518;	230.4154;	259.8504;	288.848;	329.0813;	357.3441;	362.5];
droneC_east_y = [175;	161.8617;	160.9125;	166.1823;	164.2859;	156.8788;	151.9603;	163.4];

%2nd Iteration
newdroneA_east_x = [175.9;	176.1834;	206.6026;	259.6;	288.9101;	326.0916;	363.6819;	362.5];
newdroneA_east_y = [147.2;	142.8937;	160.2665;	166.2;	156.5886;	156.6492;	160.6782;	163.4];

droneB_north_x = [188.6;	193.3598;	220.2538;	239.8095;	218.6665;	196.5615;	176.3843;	178.5504;	188];
droneB_north_y = [168.8;	172.6244;	165.3911;	172.1487;	195.4566;	233.2579;	271.8622;	321.5855;	316];

% 200	181.9066	176.9091	143.926	121.538	106.4615	96.5896	133.784	177.8864	223.562	224
% 175	182.4679	164.9942	166.5013	124.48	110.9513	72.6477	47.5296	33.5819	21.6897	19.27

DRONEC_south_x = [200;	181.9066;	176.9091;	143.926;	121.538;	106.4615;	96.5896;	133.784;	177.8864;	223.562;	224];
DRONEC_south_y = [175;	182.4679;	164.9942;	166.5013;	124.48;	110.9513;	72.6477;	47.5296;	33.5819;	21.6897;	19.27];

%3rd Iteration
droneA_north_x = [175.9;	180.7824;	149.2181;	129.1506;	135.7321;	168.7332;	172.224;	183.994;	188];
droneA_north_y = [147.2;	154.4165;	171.2165;	175.9028;	221.0491;	253.7206;	285.7971;	311.4419;	316];

droneB_south_x = [188.6;	185.9991;	225.4369;	256.2105;	297.8693;	301.3606;	271.4575;	247.1703;	238.3772;	223.1159;	224];
droneB_south_y = [168.8;	170.6402;	163.6735;	169.6275;	150.7531;	141.8138;	105.8272;	70.07;	54.4584;	15.3332;	19.27];

droneC_west_x = [200;	188.4256;	159.7019;	130.0236;	100.9674;	74.3979;	30.9089;	28.49];
droneC_west_y = [175;	185.4627;	164.2345;	138.2067;	152.4228;	159.7375;	172.4563;	176.9];

%4th Iteration
DRONEA_east_x = [175.9;	176.1834;	206.6026;	248.9218;	259.9;	288.848;	363.6819;	362.5];
DRONEA_east_y = [147.2;	142.8937;	160.2665;	178.5131;	166.2;	164.2859;	160.6782;	163.4];

DRONEC_west_x = [200;	188.4256;	159.7019;	130.0236;	100.9674;	74.3979;	30.9089;	28.49];
DRONEC_west_y = [175;	185.4627;	164.2345;	138.2067;	152.4228;	159.7375;	172.4563;	176.9];

axis([0,400,0,400])
     a1 = plot([droneA_east_x(1) droneA_east_x(1)],[droneA_east_y(1) droneA_east_y(1)],'b--+')
     hold on
     b1 = plot([droneB_west_x(1) droneB_west_x(1)],[droneB_west_y(1) droneB_west_y(1)],'r--X')
     hold on
     c1 = plot([droneC_east_x(1) droneC_east_x(1)],[droneC_east_y(1) droneC_east_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a2 = plot([droneA_east_x(1) droneA_east_x(2)],[droneA_east_y(1) droneA_east_y(2)],'b--+')
     hold on
     b2 = plot([droneB_west_x(1) droneB_west_x(2)],[droneB_west_y(1) droneB_west_y(2)],'r--X')
     hold on
     c2 = plot([droneC_east_x(1) droneC_east_x(2)],[droneC_east_y(1) droneC_east_y(2)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);

     a3 = plot([droneA_east_x(2) droneA_east_x(3)],[droneA_east_y(2) droneA_east_y(3)],'b--+')
     hold on
     b3 = plot([droneB_west_x(2) droneB_west_x(3)],[droneB_west_y(2) droneB_west_y(3)],'r--X')
     hold on
     c3 = plot([droneC_east_x(2) droneC_east_x(3)],[droneC_east_y(2) droneC_east_y(3)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a4 = plot([droneA_east_x(3) droneA_east_x(4)],[droneA_east_y(3) droneA_east_y(4)],'b--+')
     hold on
     b4 = plot([droneB_west_x(3) droneB_west_x(4)],[droneB_west_y(3) droneB_west_y(4)],'r--X')
     hold on
     c4 = plot([droneC_east_x(3) droneC_east_x(4)],[droneC_east_y(3) droneC_east_y(4)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    a5 = plot([droneA_east_x(4) droneA_east_x(5)],[droneA_east_y(4) droneA_east_y(5)],'b--+')
     hold on
     b5 = plot([droneB_west_x(4) droneB_west_x(5)],[droneB_west_y(4) droneB_west_y(5)],'r--X')
     hold on
     c5 = plot([droneC_east_x(4) droneC_east_x(5)],[droneC_east_y(4) droneC_east_y(5)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a6 = plot([droneA_east_x(5) droneA_east_x(6)],[droneA_east_y(5) droneA_east_y(6)],'b--+')
     hold on
     b6 = plot([droneB_west_x(5) droneB_west_x(6)],[droneB_west_y(5) droneB_west_y(6)],'r--X')
     hold on
     c6 = plot([droneC_east_x(5) droneC_east_x(6)],[droneC_east_y(5) droneC_east_y(6)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a7 = plot([droneA_east_x(6) droneA_east_x(7)],[droneA_east_y(6) droneA_east_y(7)],'b--+')
     hold on
     b7 = plot([droneB_west_x(6) droneB_west_x(7)],[droneB_west_y(6) droneB_west_y(7)],'r--X')
     hold on
     c7 = plot([droneC_east_x(6) droneC_east_x(7)],[droneC_east_y(6) droneC_east_y(7)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    a8 = plot([droneA_east_x(7) droneA_east_x(8)],[droneA_east_y(7) droneA_east_y(8)],'b--+')
     hold on
     b8 = plot([droneB_west_x(7) droneB_west_x(8)],[droneB_west_y(7) droneB_west_y(8)],'r--X')
     hold on
     c8 = plot([droneC_east_x(7) droneC_east_x(8)],[droneC_east_y(7) droneC_east_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a9 = plot([droneA_east_x(8) droneA_east_x(8)],[droneA_east_y(8) droneA_east_y(8)],'b--+')
     hold on
     b9 = plot([droneB_west_x(8) droneB_west_x(8)],[droneB_west_y(8) droneB_west_y(8)],'r--X')
     hold on
     c9 = plot([droneC_east_x(8) droneC_east_x(8)],[droneC_east_y(8) droneC_east_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(wait);
    
    set(a9,'Visible','off')
    hold on
    set(b9,'Visible','off')
    hold on
    set(c9,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(a8,'Visible','off')
    hold on
    set(b8,'Visible','off')
    hold on
    set(c8,'Visible','off')
    hold on
    drawnow;
    F = getframe(gcf);
    pause(delay);

    set(a7,'Visible','off')
    hold on
    set(b7,'Visible','off')
    hold on
    set(c7,'Visible','off')
    hold on
    drawnow;
    pause(delay);

    set(a6,'Visible','off')
    hold on
    set(b6,'Visible','off')
    hold on
    set(c6,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(a5,'Visible','off')
    hold on
    set(b5,'Visible','off')
    hold on
    set(c5,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(a4,'Visible','off')
    hold on
    set(b4,'Visible','off')
    hold on
    set(c4,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(a3,'Visible','off')
    hold on
    set(b3,'Visible','off')
    hold on
    set(c3,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(a2,'Visible','off')
    hold on
    set(b2,'Visible','off')
    hold on
    set(c2,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(a1,'Visible','off')
    hold on
    set(b1,'Visible','off')
    hold on
    set(c1,'Visible','off')
    hold on
    drawnow;
    pause(wait);
    
     a_wait1 = plot([newdroneA_east_x(1) newdroneA_east_x(1)],[newdroneA_east_y(1) newdroneA_east_y(1)],'b--+')
     hold on
     b_wait1 = plot([droneB_north_x(1) droneB_north_x(1)],[droneB_north_y(1) droneB_north_y(1)],'r--X')
     hold on
     c_wait1 = plot([DRONEC_south_x(1) DRONEC_south_x(1)],[DRONEC_south_y(1) DRONEC_south_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a_wait2 = plot([newdroneA_east_x(1) newdroneA_east_x(1)],[newdroneA_east_y(1) newdroneA_east_y(1)],'b--+')
     hold on
     b_wait2 = plot([droneB_north_x(1) droneB_north_x(1)],[droneB_north_y(1) droneB_north_y(1)],'r--X')
     hold on
     c_wait2 = plot([DRONEC_south_x(1) DRONEC_south_x(1)],[DRONEC_south_y(1) DRONEC_south_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    
     a11 = plot([newdroneA_east_x(1) newdroneA_east_x(2)],[newdroneA_east_y(1) newdroneA_east_y(2)],'b--+')
     hold on
     b11 = plot([droneB_north_x(1) droneB_north_x(2)],[droneB_north_y(1) droneB_north_y(2)],'r--X')
     hold on
     c11 = plot([DRONEC_south_x(1) DRONEC_south_x(2)],[DRONEC_south_y(1) DRONEC_south_y(2)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a12 = plot([newdroneA_east_x(2) newdroneA_east_x(3)],[newdroneA_east_y(2) newdroneA_east_y(3)],'b--+')
     hold on
     b12 = plot([droneB_north_x(2) droneB_north_x(3)],[droneB_north_y(2) droneB_north_y(3)],'r--X')
     hold on
     c12 = plot([DRONEC_south_x(2) DRONEC_south_x(3)],[DRONEC_south_y(2) DRONEC_south_y(3)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a13 = plot([newdroneA_east_x(3) newdroneA_east_x(4)],[newdroneA_east_y(3) newdroneA_east_y(4)],'b--+')
     hold on
     b13 = plot([droneB_north_x(3) droneB_north_x(4)],[droneB_north_y(3) droneB_north_y(4)],'r--X')
     hold on
     c13 = plot([DRONEC_south_x(3) DRONEC_south_x(4)],[DRONEC_south_y(3) DRONEC_south_y(4)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a14 = plot([newdroneA_east_x(4) newdroneA_east_x(5)],[newdroneA_east_y(4) newdroneA_east_y(5)],'b--+')
     hold on
     b14 = plot([droneB_north_x(4) droneB_north_x(5)],[droneB_north_y(4) droneB_north_y(5)],'r--X')
     hold on
     c14 = plot([DRONEC_south_x(4) DRONEC_south_x(5)],[DRONEC_south_y(4) DRONEC_south_y(5)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a15 = plot([newdroneA_east_x(5) newdroneA_east_x(6)],[newdroneA_east_y(5) newdroneA_east_y(6)],'b--+')
     hold on
     b15 = plot([droneB_north_x(5) droneB_north_x(6)],[droneB_north_y(5) droneB_north_y(6)],'r--X')
     hold on
     c15 = plot([DRONEC_south_x(5) DRONEC_south_x(6)],[DRONEC_south_y(5) DRONEC_south_y(6)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a16 = plot([newdroneA_east_x(6) newdroneA_east_x(7)],[newdroneA_east_y(6) newdroneA_east_y(7)],'b--+')
     hold on
     b16 = plot([droneB_north_x(6) droneB_north_x(7)],[droneB_north_y(6) droneB_north_y(7)],'r--X')
     hold on
     c16 = plot([DRONEC_south_x(6) DRONEC_south_x(7)],[DRONEC_south_y(6) DRONEC_south_y(7)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a17 = plot([newdroneA_east_x(7) newdroneA_east_x(8)],[newdroneA_east_y(7) newdroneA_east_y(8)],'b--+')
     hold on
     b17 = plot([droneB_north_x(7) droneB_north_x(8)],[droneB_north_y(7) droneB_north_y(8)],'r--X')
     hold on
     c17 = plot([DRONEC_south_x(7) DRONEC_south_x(8)],[DRONEC_south_y(7) DRONEC_south_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a18 = plot([newdroneA_east_x(8) newdroneA_east_x(8)],[newdroneA_east_y(8) newdroneA_east_y(8)],'b--+')
     hold on
     b18 = plot([droneB_north_x(8) droneB_north_x(9)],[droneB_north_y(8) droneB_north_y(9)],'r--X')
     hold on
     c18 = plot([droneC_south_x(8) droneC_south_x(9)],[DRONEC_south_y(8) DRONEC_south_y(9)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a19 = plot([newdroneA_east_x(8) newdroneA_east_x(8)],[newdroneA_east_y(8) newdroneA_east_y(8)],'b--+')
     hold on
     b19 = plot([droneB_north_x(9) droneB_north_x(9)],[droneB_north_y(9) droneB_north_y(9)],'r--X')
     hold on
     c19 = plot([DRONEC_south_x(9) DRONEC_south_x(10)],[DRONEC_south_y(9) DRONEC_south_y(10)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a17,'Visible','off')
     set(a18,'Visible','off')
     set(a19,'Visible','off')
     hold on
     b20 = plot([droneB_north_x(9) droneB_north_x(9)],[droneB_north_y(9) droneB_north_y(9)],'r--X')
     hold on
     c20 = plot([DRONEC_south_x(10) DRONEC_south_x(11)],[DRONEC_south_y(10) DRONEC_south_y(11)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a16,'Visible','off')
     hold on
     set(b18,'Visible','off')
     hold on
     c21 = plot([DRONEC_south_x(11) DRONEC_south_x(11)],[DRONEC_south_y(11) DRONEC_south_y(11)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a15,'Visible','off')
     hold on
     set(b17,'Visible','off')
     hold on
     c22 = plot([DRONEC_south_x(11) DRONEC_south_x(11)],[DRONEC_south_y(11) DRONEC_south_y(11)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a14,'Visible','off')
     hold on
     set(b16,'Visible','off')
     hold on
     set(c22,'Visible','off')
     set(c21,'Visible','off')
     set(c20,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     set(a13,'Visible','off')
     hold on
     set(b15,'Visible','off')
     hold on
     set(c19,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     set(a12,'Visible','off')
     hold on
     set(b14,'Visible','off')
     hold on
     set(c18,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     set(a11,'Visible','off')
     hold on
     set(b13,'Visible','off')
     hold on
     set(c17,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     await11 = plot([droneA_north_x(1) droneA_north_x(1)],[droneA_north_y(1) droneA_north_y(1)],'b--+')
     hold on
     set(b12,'Visible','off')
     hold on
     set(c16,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     await12 = plot([droneA_north_x(1) droneA_north_x(1)],[droneA_north_y(1) droneA_north_y(1)],'b--+')    
     hold on
     set(b11,'Visible','off')
     hold on
     set(c15,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     a111 = plot([droneA_north_x(1) droneA_north_x(2)],[droneA_north_y(1) droneA_north_y(2)],'b--+')    
     hold on
     bwait11 = plot([droneB_south_x(1) droneB_south_x(1)],[droneB_south_y(1) droneB_south_y(1)],'r--X')
     hold on
     set(c14,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     a112 = plot([droneA_north_x(2) droneA_north_x(3)],[droneA_north_y(2) droneA_north_y(3)],'b--+')    
     hold on
     bwait12 = plot([droneB_south_x(1) droneB_south_x(1)],[droneB_south_y(1) droneB_south_y(1)],'r--X')
     hold on
     set(c13,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     a113 = plot([droneA_north_x(3) droneA_north_x(4)],[droneA_north_y(3) droneA_north_y(4)],'b--+')    
     hold on
     b111 = plot([droneB_south_x(1) droneB_south_x(2)],[droneB_south_y(1) droneB_south_y(2)],'r--X')
     hold on
     set(c12,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     a114 = plot([droneA_north_x(4) droneA_north_x(5)],[droneA_north_y(4) droneA_north_y(5)],'b--+')    
     hold on
     b112 = plot([droneB_south_x(2) droneB_south_x(3)],[droneB_south_y(2) droneB_south_y(3)],'r--X')
     hold on
     set(c11,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     a115 = plot([droneA_north_x(5) droneA_north_x(6)],[droneA_north_y(5) droneA_north_y(6)],'b--+')    
     hold on
     b113 = plot([droneB_south_x(3) droneB_south_x(4)],[droneB_south_y(3) droneB_south_y(4)],'r--X')
     hold on
     cwait111 = plot([droneC_west_x(1) droneC_west_x(1)],[droneC_west_y(1) droneC_west_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a116 = plot([droneA_north_x(6) droneA_north_x(7)],[droneA_north_y(6) droneA_north_y(7)],'b--+')    
     hold on
     b114 = plot([droneB_south_x(4) droneB_south_x(5)],[droneB_south_y(4) droneB_south_y(5)],'r--X')
     hold on
     cwait112 = plot([droneC_west_x(1) droneC_west_x(1)],[droneC_west_y(1) droneC_west_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a117 = plot([droneA_north_x(7) droneA_north_x(8)],[droneA_north_y(7) droneA_north_y(8)],'b--+')    
     hold on
     b115 = plot([droneB_south_x(5) droneB_south_x(6)],[droneB_south_y(5) droneB_south_y(6)],'r--X')
     hold on
     c111 = plot([droneC_west_x(1) droneC_west_x(2)],[droneC_west_y(1) droneC_west_y(2)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a118 = plot([droneA_north_x(8) droneA_north_x(9)],[droneA_north_y(8) droneA_north_y(9)],'b--+')    
     hold on
     b116 = plot([droneB_south_x(6) droneB_south_x(7)],[droneB_south_y(6) droneB_south_y(7)],'r--X')
     hold on
     c112 = plot([droneC_west_x(2) droneC_west_x(3)],[droneC_west_y(2) droneC_west_y(3)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a119 = plot([droneA_north_x(9) droneA_north_x(9)],[droneA_north_y(9) droneA_north_y(9)],'b--+')    
     hold on
     b117 = plot([droneB_south_x(7) droneB_south_x(8)],[droneB_south_y(7) droneB_south_y(8)],'r--X')
     hold on
     c113 = plot([droneC_west_x(3) droneC_west_x(4)],[droneC_west_y(3) droneC_west_y(4)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     a120 = plot([droneA_north_x(9) droneA_north_x(9)],[droneA_north_y(9) droneA_north_y(9)],'b--+')    
     hold on
     b118 = plot([droneB_south_x(8) droneB_south_x(9)],[droneB_south_y(8) droneB_south_y(9)],'r--X')
     hold on
     c114 = plot([droneC_west_x(4) droneC_west_x(5)],[droneC_west_y(4) droneC_west_y(5)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a120,'Visible','off')
     set(a119,'Visible','off')
     set(a118,'Visible','off')
     hold on
     b119 = plot([droneB_south_x(9) droneB_south_x(10)],[droneB_south_y(9) droneB_south_y(10)],'r--X')
     hold on
     c115 = plot([droneC_west_x(5) droneC_west_x(6)],[droneC_west_y(5) droneC_west_y(6)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a117,'Visible','off')
     hold on
     b120 = plot([droneB_south_x(10) droneB_south_x(11)],[droneB_south_y(10) droneB_south_y(11)],'r--X')
     hold on
     c116 = plot([droneC_west_x(6) droneC_west_x(7)],[droneC_west_y(6) droneC_west_y(7)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a116,'Visible','off')
     hold on
     b121 = plot([droneB_south_x(11) droneB_south_x(11)],[droneB_south_y(11) droneB_south_y(11)],'r--X')
     hold on
     c117 = plot([droneC_west_x(7) droneC_west_x(8)],[droneC_west_y(7) droneC_west_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    set(a115,'Visible','off')
     hold on
     b122 = plot([droneB_south_x(11) droneB_south_x(11)],[droneB_south_y(11) droneB_south_y(11)],'r--X')
     hold on
     c118 = plot([droneC_west_x(8) droneC_west_x(8)],[droneC_west_y(8) droneC_west_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    set(a114,'Visible','off')
     hold on
     set(b121,'Visible','off')
     set(b122,'Visible','off')
     set(b120,'Visible','off')
     hold on
     c119 = plot([droneC_west_x(8) droneC_west_x(8)],[droneC_west_y(8) droneC_west_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(a113,'Visible','off')
     hold on
     set(b119,'Visible','off')
     hold on
     set(c119,'Visible','off')
     set(c118,'Visible','off')
     set(c117,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     set(a112,'Visible','off')
     hold on
     set(b118,'Visible','off')
     hold on
     set(c116,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     set(a111,'Visible','off')
     hold on
     set(b117,'Visible','off')
     hold on
     set(c115,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     a_wait1111 = plot([DRONEA_east_x(1) DRONEA_east_x(1)],[DRONEA_east_y(1) DRONEA_east_y(1)],'b--+')
     hold on
     set(b116,'Visible','off')
     hold on
     set(c114,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     a_wait1112 = plot([DRONEA_east_x(1) DRONEA_east_x(1)],[DRONEA_east_y(1) DRONEA_east_y(1)],'b--+')    
     hold on
     set(b115,'Visible','off')
     hold on
     set(c113,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     a1111 = plot([DRONEA_east_x(1) DRONEA_east_x(2)],[DRONEA_east_y(1) DRONEA_east_y(2)],'b--+')    
     hold on
     set(b114,'Visible','off')
     hold on
     set(c112,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     a1112 = plot([DRONEA_east_x(2) DRONEA_east_x(3)],[DRONEA_east_y(2) DRONEA_east_y(3)],'b--+')     
     hold on
     set(b113,'Visible','off')
     hold on
     set(c111,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
      a1113 = plot([DRONEA_east_x(3) DRONEA_east_x(4)],[DRONEA_east_y(3) DRONEA_east_y(4)],'b--+')         
     hold on
     set(b112,'Visible','off')
     hold on
     cwait1111 = plot([DRONEC_west_x(1) DRONEC_west_x(1)],[DRONEC_west_y(1) DRONEC_west_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     a1114 = plot([DRONEA_east_x(4) DRONEA_east_x(5)],[DRONEA_east_y(4) DRONEA_east_y(5)],'b--+')          
     hold on
     set(b111,'Visible','off')
     hold on
     cwait1112 = plot([DRONEC_west_x(1) DRONEC_west_x(1)],[DRONEC_west_y(1) DRONEC_west_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     a1115 = plot([DRONEA_east_x(5) DRONEA_east_x(6)],[DRONEA_east_y(5) DRONEA_east_y(6)],'b--+')          
     hold on
     set(b111,'Visible','off')
     hold on
     c1111 = plot([DRONEC_west_x(1) DRONEC_west_x(2)],[DRONEC_west_y(1) DRONEC_west_y(2)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     a1116 = plot([DRONEA_east_x(6) DRONEA_east_x(7)],[DRONEA_east_y(6) DRONEA_east_y(7)],'b--+')          
     hold on
     set(b111,'Visible','off')
     hold on
     c1112 = plot([DRONEC_west_x(2) DRONEC_west_x(3)],[DRONEC_west_y(2) DRONEC_west_y(3)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     a1117 = plot([DRONEA_east_x(7) DRONEA_east_x(8)],[DRONEA_east_y(7) DRONEA_east_y(8)],'b--+')          
     hold on
     set(b111,'Visible','off')
     hold on
     c1113 = plot([DRONEC_west_x(3) DRONEC_west_x(4)],[DRONEC_west_y(3) DRONEC_west_y(4)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     a1118 = plot([DRONEA_east_x(8) DRONEA_east_x(8)],[DRONEA_east_y(8) DRONEA_east_y(8)],'b--+')          
     hold on
     set(b111,'Visible','off')
     hold on
     c1114 = plot([DRONEC_west_x(4) DRONEC_west_x(5)],[DRONEC_west_y(4) DRONEC_west_y(5)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     a1119 = plot([DRONEA_east_x(8) DRONEA_east_x(8)],[DRONEA_east_y(8) DRONEA_east_y(8)],'b--+')          
     hold on
     set(b111,'Visible','off')
     hold on
     c1115 = plot([DRONEC_west_x(5) DRONEC_west_x(6)],[DRONEC_west_y(5) DRONEC_west_y(6)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     set(a1119,'Visible','off')
     set(a1118,'Visible','off')
     set(a1117,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     c1116 = plot([DRONEC_west_x(6) DRONEC_west_x(7)],[DRONEC_west_y(6) DRONEC_west_y(7)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     set(a1116,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     c1117 = plot([DRONEC_west_x(7) DRONEC_west_x(8)],[DRONEC_west_y(7) DRONEC_west_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     set(a1115,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     c1117 = plot([DRONEC_west_x(8) DRONEC_west_x(8)],[DRONEC_west_y(8) DRONEC_west_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     set(a1114,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     c1118 = plot([DRONEC_west_x(8) DRONEC_west_x(8)],[DRONEC_west_y(8) DRONEC_west_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
     hold on
     drawnow;
     pause(delay);
     
     set(a1113,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     set(c1118,'Visible','off')
     set(c1117,'Visible','off')
     set(c1116,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     set(a1112,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     set(c1115,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     set(a1111,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     set(c1114,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     set(a1111,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     set(c1113,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     set(a1111,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     set(c1112,'Visible','off')
     hold on
     drawnow;
     pause(delay);
     
     set(a1111,'Visible','off')
     hold on
     set(b111,'Visible','off')
     hold on
     set(c1111,'Visible','off')
     hold on
     drawnow;
     pause(delay);