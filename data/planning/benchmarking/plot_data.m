clear all;close all
data = load('benchmark_2')
x = [0 .1 .2 .3 .4 .5 .6 .7 .8 .9 1.0]
n = hist(data,x) / length(data)
figure(1)
bar(x,n)


xlabel('Planning time (seconds)')
ylabel('Fraction of attempts')
title ('PDF of planning time')
xlim([-.05 1])