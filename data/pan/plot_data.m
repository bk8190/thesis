clear all;close all;

data{1} = load('face_dataset_no_ff_3')*100;
data{2} = load('face_dataset_0.05_ff_2')*100;

% Remove outliers
for i = 1:length(data)
    d = data{i};
    
    inbounds = d(:,1) < 200;
    data{i} = d(inbounds,:);
end

% Subtract off the mean
for i = 1:length(data)
    d = data{i};
    
    m = mean(d)
%     d(:,1) = d(:,1) - m(1);
    d(:,2) = d(:,2) - m(2);
    
    data{i} = d;
end

data1 = data{1};
data2 = data{2};

figure(1)
hold on
scatter(data1(:,2),data1(:,1),'b.')
% scatter(data2(:,2),data2(:,1),'r.')

xlim([-10 10])
ylim([140 165])
axis equal

ylabel('Distance from robot (cm)')
xlabel('Lateral offset (cm)')
title('World coordinates of detected face from panning Kinect')