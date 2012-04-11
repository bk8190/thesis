clear all;close all;

data = load('face_dataset_3');

means = mean(data);
norm(:,1) = data(:,1) - means(1);
norm(:,2) = data(:,2) - means(2);

figure(1)
scatter(norm(:,1),norm(:,2))


axis([-.5 .5 -.5 .5])
xlabel('Side-side error (m)')
ylabel('Front-back error (m)')