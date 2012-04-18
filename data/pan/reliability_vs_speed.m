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

data2 = [
0.0, 100
0.3, 95;
0.4, 91;
0.5, 92;
0.6, 85;
0.7, 83;
0.8, 80;
0.9, 83;
1.0, 53 ];

figure(1)
clf
plot ( data(:,1), data(:,2) , 'r-*')

axis([0 1 0 100])
title ({'Reliability of Kinect tracking with Kinect','mounted on rotating platform'})
xlabel('Max angular speed of platform (rad/sec)')
ylabel('Percentage of time locked on')

pause
% figure(2)
% clf
hold on
plot ( data2(:,1), data2(:,2) , 'b-*')
 legend(gca, {'No pan compensation', 'pan compensation'}, 'Location', 'SouthWest')
hold off

axis([0 1 0 100])
title ({'Reliability of Kinect tracking with Kinect','mounted on rotating platform'})
xlabel('Max angular speed of platform (rad/sec)')
ylabel('Percentage of time locked on')
