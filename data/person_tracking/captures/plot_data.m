clear all;close all;
file1 = '0x7fffca4d6dd8/0x7fffca4d6dd8_hist_0'
data1 = load(file1)

file2 = '2012-04-23-19-10-49/capture_2012-04-23-19-10-49_user2_hist'
data2 = load(file2)

data = data1

sats = 1:size(data,1)
sats = sats / max(sats)

hues = 1:size(data,2)
hues = 180*hues/max(hues)


figure(1);
surf(sats, hues, data);

xlabel('Saturation')
xlim([0 1])
ylabel('Hue')
ylim([0 180])
zlabel('Normalized histogram value')