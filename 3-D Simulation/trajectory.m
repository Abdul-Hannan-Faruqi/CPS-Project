%Drone 3 waypoints are stored in this trajectory.m matlab file. Run the code,
%removing the function trajectory, so that all the waypoints get stored in the
%base workspace, and the variables can be input to SimulinkDroneModel.slx
function trajectory
TIME = [0:1:64]';
XAXIS = [2	2	1.079930096	-10.74408063	-15.87687865	-31.65093535	-43.74497218	-50.25568126	-66.5080121	-68	-68	-68	-66.5080121	-50.25568126	-43.74497218	-31.65093535	-15.87687865	-10.74408063	1.079930096	2	2	2	0.772487483	-9.356727916	-17.31291461	-27.09195264	-30.73766537	-34.53592809	-23.83033046	-9.42314771	-5.466199014	0	0	0	-5.466199014	-9.42314771	-23.83033046	-34.53592809	-30.73766537	-27.09195264	-17.31291461	-9.356727916	0.772487483	2	2	2	0.772487483	14.57445049	8.926079817	3.60579857	-0.461787963	-1.58910357	-3.555869018	0	0	0	-3.555869018	-1.58910357	-0.461787963	3.60579857	8.926079817	14.57445049	0.772487483	2	2]';
YAXIS = [2	2	3.252323006	-1.534842462	0	-17.22889338	-16.68099781	-12.61321284	-2.663585166	0	0	0	-2.663585166	-12.61321284	-16.68099781	-17.22889338	0	-1.534842462	3.252323006	2	2	2	1.278816838	3.531579117	-4.305393962	-15.94348838	-29.58706341	-44.94850668	-56.08067449	-63.89998476	-66.22617142	-68	-68	-68	-66.22617142	-63.89998476	-56.08067449	-44.94850668	-29.58706341	-15.94348838	-4.305393962	3.531579117	1.278816838	2	2	2	1.278816838	0.21844953	18.49846091	31.76385048	44.97931337	55.87591015	69.07472752	68	68	68	69.07472752	55.87591015	44.97931337	31.76385048	18.49846091	0.21844953	1.278816838	2	2]';
ZAXIS = [0	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	0]';
trajc.time = TIME;
trajc.signals.values = [XAXIS,YAXIS,ZAXIS];
trajc.signals.dimensions = 3;
end