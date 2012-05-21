clear all;close all;
file1 = '0x7fffca4d6dd8/0x7fffca4d6dd8_hist_0';
file2 = '2012-04-23-19-10-49/capture_2012-04-23-19-10-49_user2_hist';

fprintf('\nFiles are:\n%s\n%s\n\n', file1, file2)

data1 = load(file1);
data2 = load(file2);

data = data1;

sats = 1:size(data,1);
sats = sats / max(sats);
hues = 1:size(data,2);
hues = 180*hues/max(hues);

figure(1);
surf(sats, hues, data);

xlabel('Saturation')
xlim([0 1])
ylabel('Hue')
ylim([0 180])
zlabel('Normalized histogram value')
zlim([0 1])

corr_mat = corrcoef( data1(:), data2(:) );
corr_coef = corr_mat(2,1);

fprintf('Correlation between histograms is %.2f\n', corr_coef)