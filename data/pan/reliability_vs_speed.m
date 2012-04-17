clear all
data = [
0.0, 100;
0.3, 99;
0.5, 97;
0.6, 94;
0.7, 89;
0.8, 78;
0.9, 35;
1.0, 15 ]

figure(1)
clf
plot ( data(:,1), data(:,2) , '-*')

axis([0 1 0 100])
title ({'Reliability of Kinect tracking with Kinect','mounted on rotating platform'})
xlabel('Max angular speed of platform (rad/sec)')
ylabel('Percentage of time locked on')