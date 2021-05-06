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
droneA_west_x = [175.9;	179.2623;	136.4285;	129.0417;	113.9482;	84.1678;	36.6952;	28.49];
droneA_west_y = [147.2;	154.8491;	173.2756;	212.9314;	217.7194;	204.2331;	188.7562;	176.9];

droneB_south_x = [188.6;	185.9991;	225.4369;	256.2105;	297.8693;	301.3606;	271.4575;	247.1703;	238.3772;	223.1159;	224];
droneB_south_y = [168.8;	170.6402;	163.6735;	169.6275;	150.7531;	141.8138;	105.8272;	70.07;	54.4584;	15.3332;	19.27];

droneC_north_x = [200;	185.55;	226.7857;	231.4187;	205.472;	206.6374;	182.7391;	188.1659;	188];
droneC_north_y = [175;	172.1011;	168.0545;	185.5648;	212.8572;	240.9347;	264.078;	307.929;	316];

%3rd Iteration
DRONEA_east_x = [175.9;	176.1834;	206.6026;	248.9218;	288.9101;	326.0916;	363.6819;	362.5];
DRONEA_east_y = [147.2;	142.8937;	160.2665;	178.5131;	156.5886;	156.6492;	160.6782;	163.4];

DRONEB_west_x = [188.6;	188.9588;	148.3812;	127.9167;	102.213;	68.7577;	33.2517;	28.49];
DRONEB_west_y = [168.8;	176.368;	164.4024;	140.6621;	151.4053;	165.9174;	181.9696;	176.9];

droneC_south_west_x = [200;	181.9066;	176.9091;	143.926;	121.538;	106.4615;	96.5896;	133.784;	177.8864;	223.562;	224;	223.7377;	208.9449;	160.8564;	118.7164;	107.0514;	80.8324;	57.3871;	31.1526;	28.49;	30.9089;	74.3979;	100.9674;	130.0236;	159.7019;	188.4256;	200];
droneC_south_west_y = [175;	182.4679;	164.9942;	166.5013;	124.48;	110.9513;	72.6477;	47.5296;	33.5819;	21.6897;	19.27;	19.7113;	32.6131;	44.5827;	57.242;	83.7322;	124.2423;	157.0752;	190.4506;	176.9;	172.4563;	159.7375;	152.4228;	138.2067;	164.2345;	185.4627;	175];

%4th Iteration
 droneA_north_east_x = [175.9;	180.7824;	149.2181;	129.1506;	135.7321;	168.7332;	172.224;	183.994;	188;	183.9943;	186.7916;	212.8061;	250.7135;	285.5452;	310.9127;	341.009;	358.9707;	362.5;	363.6819;	326.0916;	288.9101;	248.9218;	206.6026;	176.1834;	175.9];
droneA_north_east_y = [147.2;	154.4165;	171.2165;	175.9028;	221.0491;	253.7206;	285.7971;	311.4419;	316;	319.0185;	310.6416;	290.4783;	266.7736;	242.5312;	217.5628;	182.2455;	154.7794;	163.4;	160.6782;	156.6492;	156.5886;	178.5131;	160.2665;	142.8937;	147.2];

DRONEB_WEST_x = [188.6;	188.9588;	148.3812;	127.9167;	102.213;	68.7577;	33.2517;	28.49];
DRONEB_WEST_y = [168.8;	176.368;	164.4024;	140.6621;	151.4053;	165.9174;	181.9696;	176.9];

axis([0,400,0,400])
     A1 = plot([droneA_east_x(1) droneA_east_x(1)],[droneA_east_y(1) droneA_east_y(1)],'b--+')
     hold on
     B1 = plot([droneB_west_x(1) droneB_west_x(1)],[droneB_west_y(1) droneB_west_y(1)],'r--X')
     hold on
     C1 = plot([droneC_east_x(1) droneC_east_x(1)],[droneC_east_y(1) droneC_east_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A2 = plot([droneA_east_x(1) droneA_east_x(2)],[droneA_east_y(1) droneA_east_y(2)],'b--+')
     hold on
     B2 = plot([droneB_west_x(1) droneB_west_x(2)],[droneB_west_y(1) droneB_west_y(2)],'r--X')
     hold on
     C2 = plot([droneC_east_x(1) droneC_east_x(2)],[droneC_east_y(1) droneC_east_y(2)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);

     A3 = plot([droneA_east_x(2) droneA_east_x(3)],[droneA_east_y(2) droneA_east_y(3)],'b--+')
     hold on
     B3 = plot([droneB_west_x(2) droneB_west_x(3)],[droneB_west_y(2) droneB_west_y(3)],'r--X')
     hold on
     C3 = plot([droneC_east_x(2) droneC_east_x(3)],[droneC_east_y(2) droneC_east_y(3)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A4 = plot([droneA_east_x(3) droneA_east_x(4)],[droneA_east_y(3) droneA_east_y(4)],'b--+')
     hold on
     B4 = plot([droneB_west_x(3) droneB_west_x(4)],[droneB_west_y(3) droneB_west_y(4)],'r--X')
     hold on
     C4 = plot([droneC_east_x(3) droneC_east_x(4)],[droneC_east_y(3) droneC_east_y(4)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    A5 = plot([droneA_east_x(4) droneA_east_x(5)],[droneA_east_y(4) droneA_east_y(5)],'b--+')
     hold on
     B5 = plot([droneB_west_x(4) droneB_west_x(5)],[droneB_west_y(4) droneB_west_y(5)],'r--X')
     hold on
     C5 = plot([droneC_east_x(4) droneC_east_x(5)],[droneC_east_y(4) droneC_east_y(5)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A6 = plot([droneA_east_x(5) droneA_east_x(6)],[droneA_east_y(5) droneA_east_y(6)],'b--+')
     hold on
     B6 = plot([droneB_west_x(5) droneB_west_x(6)],[droneB_west_y(5) droneB_west_y(6)],'r--X')
     hold on
     C6 = plot([droneC_east_x(5) droneC_east_x(6)],[droneC_east_y(5) droneC_east_y(6)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A7 = plot([droneA_east_x(6) droneA_east_x(7)],[droneA_east_y(6) droneA_east_y(7)],'b--+')
     hold on
     B7 = plot([droneB_west_x(6) droneB_west_x(7)],[droneB_west_y(6) droneB_west_y(7)],'r--X')
     hold on
     C7 = plot([droneC_east_x(6) droneC_east_x(7)],[droneC_east_y(6) droneC_east_y(7)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    A8 = plot([droneA_east_x(7) droneA_east_x(8)],[droneA_east_y(7) droneA_east_y(8)],'b--+')
     hold on
     B8 = plot([droneB_west_x(7) droneB_west_x(8)],[droneB_west_y(7) droneB_west_y(8)],'r--X')
     hold on
     C8 = plot([droneC_east_x(7) droneC_east_x(8)],[droneC_east_y(7) droneC_east_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A9 = plot([droneA_east_x(8) droneA_east_x(8)],[droneA_east_y(8) droneA_east_y(8)],'b--+')
     hold on
     B9 = plot([droneB_west_x(8) droneB_west_x(8)],[droneB_west_y(8) droneB_west_y(8)],'r--X')
     hold on
     C9 = plot([droneC_east_x(8) droneC_east_x(8)],[droneC_east_y(8) droneC_east_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(wait);
    
    set(A9,'Visible','off')
    hold on
    set(B9,'Visible','off')
    hold on
    set(C9,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(A8,'Visible','off')
    hold on
    set(B8,'Visible','off')
    hold on
    set(C8,'Visible','off')
    hold on
    drawnow;
    pause(delay);

    set(A7,'Visible','off')
    hold on
    set(B7,'Visible','off')
    hold on
    set(C7,'Visible','off')
    hold on
    drawnow;
    pause(delay);

    set(A6,'Visible','off')
    hold on
    set(B6,'Visible','off')
    hold on
    set(C6,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(A5,'Visible','off')
    hold on
    set(B5,'Visible','off')
    hold on
    set(C5,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(A4,'Visible','off')
    hold on
    set(B4,'Visible','off')
    hold on
    set(C4,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(A3,'Visible','off')
    hold on
    set(B3,'Visible','off')
    hold on
    set(C3,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(A2,'Visible','off')
    hold on
    set(B2,'Visible','off')
    hold on
    set(C2,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
    set(A1,'Visible','off')
    hold on
    set(B1,'Visible','off')
    hold on
    set(C1,'Visible','off')
    hold on
    drawnow;
    pause(wait);
    
     Await1 = plot([droneA_west_x(1) droneA_west_x(1)],[droneA_west_y(1) droneA_west_y(1)],'b--+')
     hold on
     Bwait1 = plot([droneB_south_x(1) droneB_south_x(1)],[droneB_south_y(1) droneB_south_y(1)],'r--X')
     hold on
     Cwait1 = plot([droneC_north_x(1) droneC_north_x(1)],[droneC_north_y(1) droneC_north_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     Await2 = plot([droneA_west_x(1) droneA_west_x(1)],[droneA_west_y(1) droneA_west_y(1)],'b--+')
     hold on
     Bwait2 = plot([droneB_south_x(1) droneB_south_x(1)],[droneB_south_y(1) droneB_south_y(1)],'r--X')
     hold on
     Cwait2 = plot([droneC_north_x(1) droneC_north_x(1)],[droneC_north_y(1) droneC_north_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A11 = plot([droneA_west_x(1) droneA_west_x(2)],[droneA_west_y(1) droneA_west_y(2)],'b--+')
     hold on
     B11 = plot([droneB_south_x(1) droneB_south_x(2)],[droneB_south_y(1) droneB_south_y(2)],'r--X')
     hold on
     C11 = plot([droneC_north_x(1) droneC_north_x(2)],[droneC_north_y(1) droneC_north_y(2)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A12 = plot([droneA_west_x(2) droneA_west_x(3)],[droneA_west_y(2) droneA_west_y(3)],'b--+')
     hold on
     B12 = plot([droneB_south_x(2) droneB_south_x(3)],[droneB_south_y(2) droneB_south_y(3)],'r--X')
     hold on
     C12 = plot([droneC_north_x(2) droneC_north_x(3)],[droneC_north_y(2) droneC_north_y(3)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A13 = plot([droneA_west_x(3) droneA_west_x(4)],[droneA_west_y(3) droneA_west_y(4)],'b--+')
     hold on
     B13 = plot([droneB_south_x(3) droneB_south_x(4)],[droneB_south_y(3) droneB_south_y(4)],'r--X')
     hold on
     C13 = plot([droneC_north_x(3) droneC_north_x(4)],[droneC_north_y(3) droneC_north_y(4)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A14 = plot([droneA_west_x(4) droneA_west_x(5)],[droneA_west_y(4) droneA_west_y(5)],'b--+')
     hold on
     B14 = plot([droneB_south_x(4) droneB_south_x(5)],[droneB_south_y(4) droneB_south_y(5)],'r--X')
     hold on
     C14 = plot([droneC_north_x(4) droneC_north_x(5)],[droneC_north_y(4) droneC_north_y(5)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A15 = plot([droneA_west_x(5) droneA_west_x(6)],[droneA_west_y(5) droneA_west_y(6)],'b--+')
     hold on
     B15 = plot([droneB_south_x(5) droneB_south_x(6)],[droneB_south_y(5) droneB_south_y(6)],'r--X')
     hold on
     C15 = plot([droneC_north_x(5) droneC_north_x(6)],[droneC_north_y(5) droneC_north_y(6)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A16 = plot([droneA_west_x(6) droneA_west_x(7)],[droneA_west_y(6) droneA_west_y(7)],'b--+')
     hold on
     B16 = plot([droneB_south_x(6) droneB_south_x(7)],[droneB_south_y(6) droneB_south_y(7)],'r--X')
     hold on
     C16 = plot([droneC_north_x(6) droneC_north_x(7)],[droneC_north_y(6) droneC_north_y(7)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A17 = plot([droneA_west_x(7) droneA_west_x(8)],[droneA_west_y(7) droneA_west_y(8)],'b--+')
     hold on
     B17 = plot([droneB_south_x(7) droneB_south_x(8)],[droneB_south_y(7) droneB_south_y(8)],'r--X')
     hold on
     C17 = plot([droneC_north_x(7) droneC_north_x(8)],[droneC_north_y(7) droneC_north_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A18 = plot([droneA_west_x(8) droneA_west_x(8)],[droneA_west_y(8) droneA_west_y(8)],'b--+')
     hold on
     B18 = plot([droneB_south_x(8) droneB_south_x(9)],[droneB_south_y(8) droneB_south_y(9)],'r--X')
     hold on
     C18 = plot([droneC_north_x(8) droneC_north_x(9)],[droneC_north_y(8) droneC_north_y(9)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A19 = plot([droneA_west_x(8) droneA_west_x(8)],[droneA_west_y(8) droneA_west_y(8)],'b--+')
     hold on
     B19 = plot([droneB_south_x(9) droneB_south_x(10)],[droneB_south_y(9) droneB_south_y(10)],'r--X')
     hold on
     C19 = plot([droneC_north_x(9) droneC_north_x(9)],[droneC_north_y(9) droneC_north_y(9)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A19,'Visible','off')
     set(A18,'Visible','off')
     set(A17,'Visible','off')
     hold on
     B20 = plot([droneB_south_x(10) droneB_south_x(11)],[droneB_south_y(10) droneB_south_y(11)],'r--X')
     hold on
     C20 = plot([droneC_north_x(9) droneC_north_x(9)],[droneC_north_y(9) droneC_north_y(9)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
      set(A16,'Visible','off')  
     hold on
     B21 = plot([droneB_south_x(11) droneB_south_x(11)],[droneB_south_y(11) droneB_south_y(11)],'r--X')
     hold on
    set(C20,'Visible','off')
    set(C19,'Visible','off')
    set(C18,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
      set(A15,'Visible','off')        
     hold on
     B22 = plot([droneB_south_x(11) droneB_south_x(11)],[droneB_south_y(11) droneB_south_y(11)],'r--X')
     hold on
    set(C17,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     set(A14,'Visible','off')        
     hold on
    set(B22,'Visible','off')
    set(B21,'Visible','off')
    set(B20,'Visible','off')
     hold on
    set(C16,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     set(A13,'Visible','off')        
     hold on
    set(B19,'Visible','off')
     hold on
    set(C15,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     set(A12,'Visible','off')        
     hold on
    set(B18,'Visible','off')
     hold on
    set(C14,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     set(A11,'Visible','off')        
     hold on
    set(B17,'Visible','off')
     hold on
    set(C13,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     Await11 = plot([DRONEA_east_x(1) DRONEA_east_x(1)],[DRONEA_east_y(1) DRONEA_east_y(1)],'b--+')   
     hold on
    set(B16,'Visible','off')
     hold on
    set(C12,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     Await12 = plot([DRONEA_east_x(1) DRONEA_east_x(1)],[DRONEA_east_y(1) DRONEA_east_y(1)],'b--+')  
     hold on
    set(B15,'Visible','off')
     hold on
    set(C11,'Visible','off')
    hold on
    drawnow;
    pause(delay);
    
     A111 = plot([DRONEA_east_x(1) DRONEA_east_x(2)],[DRONEA_east_y(1) DRONEA_east_y(2)],'b--+')                 
     hold on
    set(B14,'Visible','off')
     hold on
    Cwait11 = plot([droneC_south_west_x(1) droneC_south_west_x(1)],[droneC_south_west_y(1) droneC_south_west_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A112 = plot([DRONEA_east_x(2) DRONEA_east_x(3)],[DRONEA_east_y(2) DRONEA_east_y(3)],'b--+')
     hold on
    set(B13,'Visible','off')
     hold on
    Cwait12 = plot([droneC_south_west_x(1) droneC_south_west_x(1)],[droneC_south_west_y(1) droneC_south_west_y(1)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A113 = plot([DRONEA_east_x(3) DRONEA_east_x(4)],[DRONEA_east_y(3) DRONEA_east_y(4)],'b--+')               
     hold on
    set(B12,'Visible','off')
     hold on
    C111 = plot([droneC_south_west_x(1) droneC_south_west_x(2)],[droneC_south_west_y(1) droneC_south_west_y(2)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A114 = plot([DRONEA_east_x(4) DRONEA_east_x(5)],[DRONEA_east_y(4) DRONEA_east_y(5)],'b--+')                
     hold on
    set(B11,'Visible','off')
     hold on
     C112 = plot([droneC_south_west_x(2) droneC_south_west_x(3)],[droneC_south_west_y(2) droneC_south_west_y(3)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
         A115 = plot([DRONEA_east_x(5) DRONEA_east_x(6)],[DRONEA_east_y(5) DRONEA_east_y(6)],'b--+')                
     hold on
     Bwait11 = plot([DRONEB_west_x(1) DRONEB_west_x(1)],[DRONEB_west_y(1) DRONEB_west_y(1)],'r--X')
     hold on
     C113 = plot([droneC_south_west_x(3) droneC_south_west_x(4)],[droneC_south_west_y(3) droneC_south_west_y(4)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A116 = plot([DRONEA_east_x(6) DRONEA_east_x(7)],[DRONEA_east_y(6) DRONEA_east_y(7)],'b--+')                
     hold on
     Bwait12 = plot([DRONEB_west_x(1) DRONEB_west_x(1)],[DRONEB_west_y(1) DRONEB_west_y(1)],'r--X')
     hold on
     C114 = plot([droneC_south_west_x(4) droneC_south_west_x(5)],[droneC_south_west_y(4) droneC_south_west_y(5)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A117 = plot([DRONEA_east_x(7) DRONEA_east_x(8)],[DRONEA_east_y(7) DRONEA_east_y(8)],'b--+')                
     hold on
     B111 = plot([DRONEB_west_x(1) DRONEB_west_x(2)],[DRONEB_west_y(1) DRONEB_west_y(2)],'r--X')
     hold on
     C115 = plot([droneC_south_west_x(5) droneC_south_west_x(6)],[droneC_south_west_y(5) droneC_south_west_y(6)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
      A118 = plot([DRONEA_east_x(8) DRONEA_east_x(8)],[DRONEA_east_y(8) DRONEA_east_y(8)],'b--+')                
     hold on
     B112 = plot([DRONEB_west_x(2) DRONEB_west_x(3)],[DRONEB_west_y(2) DRONEB_west_y(3)],'r--X')
     hold on
     C116 = plot([droneC_south_west_x(6) droneC_south_west_x(7)],[droneC_south_west_y(6) droneC_south_west_y(7)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A119 = plot([DRONEA_east_x(8) DRONEA_east_x(8)],[DRONEA_east_y(8) DRONEA_east_y(8)],'b--+')                
     hold on
     B113 = plot([DRONEB_west_x(3) DRONEB_west_x(4)],[DRONEB_west_y(3) DRONEB_west_y(4)],'r--X')
     hold on
     C117 = plot([droneC_south_west_x(7) droneC_south_west_x(8)],[droneC_south_west_y(7) droneC_south_west_y(8)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A119,'Visible','off')
     set(A118,'Visible','off')
     set(A117,'Visible','off')
     hold on
     B114 = plot([DRONEB_west_x(4) DRONEB_west_x(5)],[DRONEB_west_y(4) DRONEB_west_y(5)],'r--X')
     hold on
     C118 = plot([droneC_south_west_x(8) droneC_south_west_x(9)],[droneC_south_west_y(8) droneC_south_west_y(9)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A116,'Visible','off')
     hold on
     B115 = plot([DRONEB_west_x(5) DRONEB_west_x(6)],[DRONEB_west_y(5) DRONEB_west_y(6)],'r--X')
     hold on
     C119 = plot([droneC_south_west_x(9) droneC_south_west_x(10)],[droneC_south_west_y(9) droneC_south_west_y(10)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A115,'Visible','off')
     hold on
     B116 = plot([DRONEB_west_x(6) DRONEB_west_x(7)],[DRONEB_west_y(6) DRONEB_west_y(7)],'r--X')
     hold on
     C120 = plot([droneC_south_west_x(10) droneC_south_west_x(11)],[droneC_south_west_y(10) droneC_south_west_y(11)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A114,'Visible','off')
     hold on
     B117 = plot([DRONEB_west_x(7) DRONEB_west_x(8)],[DRONEB_west_y(7) DRONEB_west_y(8)],'r--X')
     hold on
     C121 = plot([droneC_south_west_x(11) droneC_south_west_x(11)],[droneC_south_west_y(11) droneC_south_west_y(11)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A113,'Visible','off')
     hold on
     B118 = plot([DRONEB_west_x(8) DRONEB_west_x(8)],[DRONEB_west_y(8) DRONEB_west_y(8)],'r--X')
     hold on
     C122 = plot([droneC_south_west_x(11) droneC_south_west_x(11)],[droneC_south_west_y(11) droneC_south_west_y(11)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A112,'Visible','off')
     hold on
     B119 = plot([DRONEB_west_x(8) DRONEB_west_x(8)],[DRONEB_west_y(8) DRONEB_west_y(8)],'r--X')
     hold on
     C123 = plot([droneC_south_west_x(11) droneC_south_west_x(12)],[droneC_south_west_y(11) droneC_south_west_y(12)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     set(A111,'Visible','off')
     hold on
     set(B119,'Visible','off')
     set(B118,'Visible','off')
     set(B117,'Visible','off')
     hold on
     C124 = plot([droneC_south_west_x(12) droneC_south_west_x(13)],[droneC_south_west_y(12) droneC_south_west_y(13)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     Await111  = plot([droneA_north_east_x(1) droneA_north_east_x(1)],[droneA_north_east_y(1) droneA_north_east_y(1)],'b--+')
     hold on
     set(B116,'Visible','off')
     hold on
     C125 = plot([droneC_south_west_x(13) droneC_south_west_x(14)],[droneC_south_west_y(13) droneC_south_west_y(14)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     Await112  = plot([droneA_north_east_x(1) droneA_north_east_x(1)],[droneA_north_east_y(1) droneA_north_east_y(1)],'b--+')       
     hold on
     set(B115,'Visible','off')
     hold on
     C126 = plot([droneC_south_west_x(14) droneC_south_west_x(15)],[droneC_south_west_y(14) droneC_south_west_y(15)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1111  = plot([droneA_north_east_x(1) droneA_north_east_x(2)],[droneA_north_east_y(1) droneA_north_east_y(2)],'b--+')               
     hold on
     set(B114,'Visible','off')
     hold on
     C127 = plot([droneC_south_west_x(15) droneC_south_west_x(16)],[droneC_south_west_y(15) droneC_south_west_y(16)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1112  = plot([droneA_north_east_x(2) droneA_north_east_x(3)],[droneA_north_east_y(2) droneA_north_east_y(3)],'b--+')                   
     hold on
     set(B113,'Visible','off')
     hold on
     C128 = plot([droneC_south_west_x(16) droneC_south_west_x(17)],[droneC_south_west_y(16) droneC_south_west_y(17)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1113  = plot([droneA_north_east_x(3) droneA_north_east_x(4)],[droneA_north_east_y(3) droneA_north_east_y(4)],'b--+')                                      
     hold on
     set(B112,'Visible','off')
     hold on
     C129 = plot([droneC_south_west_x(17) droneC_south_west_x(18)],[droneC_south_west_y(17) droneC_south_west_y(18)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1114 = plot([droneA_north_east_x(4) droneA_north_east_x(5)],[droneA_north_east_y(4) droneA_north_east_y(5)],'b--+')                                     
     hold on
     set(B111,'Visible','off')
     hold on
     C130 = plot([droneC_south_west_x(18) droneC_south_west_x(19)],[droneC_south_west_y(18) droneC_south_west_y(19)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1115 = plot([droneA_north_east_x(5) droneA_north_east_x(6)],[droneA_north_east_y(5) droneA_north_east_y(6)],'b--+')                                              
     hold on
     Bwait111 = plot([DRONEB_WEST_x(1) DRONEB_WEST_x(1)],[DRONEB_WEST_y(1) DRONEB_WEST_y(1)],'r--X')
     hold on
     C131 = plot([droneC_south_west_x(19) droneC_south_west_x(20)],[droneC_south_west_y(19) droneC_south_west_y(20)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1116 = plot([droneA_north_east_x(6) droneA_north_east_x(7)],[droneA_north_east_y(6) droneA_north_east_y(7)],'b--+')                                                  
     hold on
     Bwait112 = plot([DRONEB_WEST_x(1) DRONEB_WEST_x(1)],[DRONEB_WEST_y(1) DRONEB_WEST_y(1)],'r--X')
     hold on
     C132 = plot([droneC_south_west_x(20) droneC_south_west_x(20)],[droneC_south_west_y(20) droneC_south_west_y(20)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1117 = plot([droneA_north_east_x(7) droneA_north_east_x(8)],[droneA_north_east_y(7) droneA_north_east_y(8)],'b--+')                                                      
     hold on
     B1111 = plot([DRONEB_WEST_x(1) DRONEB_WEST_x(2)],[DRONEB_WEST_y(1) DRONEB_WEST_y(2)],'r--X')
     hold on
     C133 = plot([droneC_south_west_x(20) droneC_south_west_x(20)],[droneC_south_west_y(20) droneC_south_west_y(20)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1118 = plot([droneA_north_east_x(8) droneA_north_east_x(9)],[droneA_north_east_y(8) droneA_north_east_y(9)],'b--+')                                                                                            
     hold on
     B1112 = plot([DRONEB_WEST_x(2) DRONEB_WEST_x(3)],[DRONEB_WEST_y(2) DRONEB_WEST_y(3)],'r--X')
     hold on
     C134 = plot([droneC_south_west_x(20) droneC_south_west_x(21)],[droneC_south_west_y(20) droneC_south_west_y(21)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1119 = plot([droneA_north_east_x(9) droneA_north_east_x(9)],[droneA_north_east_y(9) droneA_north_east_y(9)],'b--+')                                                                                                                                   
     hold on
     B1113 = plot([DRONEB_WEST_x(3) DRONEB_WEST_x(4)],[DRONEB_WEST_y(3) DRONEB_WEST_y(4)],'r--X')
     hold on
     C135 = plot([droneC_south_west_x(21) droneC_south_west_x(22)],[droneC_south_west_y(21) droneC_south_west_y(22)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1120 = plot([droneA_north_east_x(9) droneA_north_east_x(9)],[droneA_north_east_y(9) droneA_north_east_y(9)],'b--+')                                                                                                                                       
     hold on
     B1114 = plot([DRONEB_WEST_x(4) DRONEB_WEST_x(5)],[DRONEB_WEST_y(4) DRONEB_WEST_y(5)],'r--X')
     hold on
     C136 = plot([droneC_south_west_x(22) droneC_south_west_x(23)],[droneC_south_west_y(22) droneC_south_west_y(23)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1121 = plot([droneA_north_east_x(9) droneA_north_east_x(10)],[droneA_north_east_y(9) droneA_north_east_y(10)],'b--+')                                                    
     hold on
     B1115 = plot([DRONEB_WEST_x(5) DRONEB_WEST_x(6)],[DRONEB_WEST_y(5) DRONEB_WEST_y(6)],'r--X')
     hold on
     C137 = plot([droneC_south_west_x(23) droneC_south_west_x(24)],[droneC_south_west_y(23) droneC_south_west_y(24)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1122 = plot([droneA_north_east_x(10) droneA_north_east_x(11)],[droneA_north_east_y(10) droneA_north_east_y(11)],'b--+')                                                      
     hold on
     B1116 = plot([DRONEB_WEST_x(6) DRONEB_WEST_x(7)],[DRONEB_WEST_y(6) DRONEB_WEST_y(7)],'r--X')
     hold on
     C138 = plot([droneC_south_west_x(24) droneC_south_west_x(25)],[droneC_south_west_y(24) droneC_south_west_y(25)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1123 = plot([droneA_north_east_x(11) droneA_north_east_x(12)],[droneA_north_east_y(11) droneA_north_east_y(12)],'b--+')                                                           
     hold on
     B1117 = plot([DRONEB_WEST_x(7) DRONEB_WEST_x(8)],[DRONEB_WEST_y(7) DRONEB_WEST_y(8)],'r--X')
     hold on
     C139 = plot([droneC_south_west_x(25) droneC_south_west_x(26)],[droneC_south_west_y(25) droneC_south_west_y(26)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1124 = plot([droneA_north_east_x(12) droneA_north_east_x(13)],[droneA_north_east_y(12) droneA_north_east_y(13)],'b--+')                                                               
     hold on
     B1118 = plot([DRONEB_WEST_x(8) DRONEB_WEST_x(8)],[DRONEB_WEST_y(8) DRONEB_WEST_y(8)],'r--X')
     hold on
     C140 = plot([droneC_south_west_x(26) droneC_south_west_x(27)],[droneC_south_west_y(26) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1125 = plot([droneA_north_east_x(13) droneA_north_east_x(14)],[droneA_north_east_y(13) droneA_north_east_y(14)],'b--+')                                                                  
     hold on
     B1119 = plot([DRONEB_WEST_x(8) DRONEB_WEST_x(8)],[DRONEB_WEST_y(8) DRONEB_WEST_y(8)],'r--X')
     hold on
     C141 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1126 = plot([droneA_north_east_x(14) droneA_north_east_x(15)],[droneA_north_east_y(14) droneA_north_east_y(15)],'b--+')                                                                   
     hold on
     set(B1119,'Visible','off')
     set(B1118,'Visible','off')
     set(B1117,'Visible','off')
     hold on
     C142 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1127 = plot([droneA_north_east_x(15) droneA_north_east_x(16)],[droneA_north_east_y(15) droneA_north_east_y(16)],'b--+')                                                                   
     hold on
     set(B1116,'Visible','off')
     hold on
     C143 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1128 = plot([droneA_north_east_x(16) droneA_north_east_x(17)],[droneA_north_east_y(16) droneA_north_east_y(17)],'b--+')                                                                   
     hold on
     set(B1115,'Visible','off')
     hold on
     C144 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1129 = plot([droneA_north_east_x(17) droneA_north_east_x(18)],[droneA_north_east_y(17) droneA_north_east_y(18)],'b--+')                                                                   
     hold on
     set(B1114,'Visible','off')
     hold on
     C145 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1130 = plot([droneA_north_east_x(18) droneA_north_east_x(18)],[droneA_north_east_y(18) droneA_north_east_y(18)],'b--+')                                                                   
     hold on
     set(B1113,'Visible','off')
     hold on
     C146 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1131 = plot([droneA_north_east_x(18) droneA_north_east_x(18)],[droneA_north_east_y(18) droneA_north_east_y(18)],'b--+')                                                                   
     hold on
     set(B1112,'Visible','off')
     hold on
     C147 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1132 = plot([droneA_north_east_x(18) droneA_north_east_x(19)],[droneA_north_east_y(18) droneA_north_east_y(19)],'b--+')                                                                   
     hold on
     set(B1111,'Visible','off')
     hold on
     C148 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1133 = plot([droneA_north_east_x(19) droneA_north_east_x(20)],[droneA_north_east_y(19) droneA_north_east_y(20)],'b--+')                                                                   
     hold on
     set(B1111,'Visible','off')
     hold on
     C149 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1134 = plot([droneA_north_east_x(20) droneA_north_east_x(21)],[droneA_north_east_y(20) droneA_north_east_y(21)],'b--+')                                                                   
     hold on
     set(B1111,'Visible','off')
     hold on
     C150 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1135 = plot([droneA_north_east_x(21) droneA_north_east_x(22)],[droneA_north_east_y(21) droneA_north_east_y(22)],'b--+')                                                                   
     hold on
     set(B1111,'Visible','off')
     hold on
     C151 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1136 = plot([droneA_north_east_x(22) droneA_north_east_x(23)],[droneA_north_east_y(22) droneA_north_east_y(23)],'b--+')                                                                   
     hold on
     set(B1111,'Visible','off')
     hold on
     C152 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
    A1137 = plot([droneA_north_east_x(23) droneA_north_east_x(24)],[droneA_north_east_y(23) droneA_north_east_y(24)],'b--+')                                                                   
     hold on
     set(B1111,'Visible','off')
     hold on
     C153 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
    
     A1138 = plot([droneA_north_east_x(24) droneA_north_east_x(25)],[droneA_north_east_y(24) droneA_north_east_y(25)],'b--+')                                                                   
     hold on
     set(B1111,'Visible','off')
     hold on
     C154 = plot([droneC_south_west_x(27) droneC_south_west_x(27)],[droneC_south_west_y(27) droneC_south_west_y(27)],'--gs',...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])
    hold on
    drawnow;
    pause(delay);
