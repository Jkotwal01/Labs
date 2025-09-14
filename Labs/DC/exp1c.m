clear
clearvars
####First part visualizes effects of changing mean and standard deviation on Gaussian PDFs.
x = -5:0.5:5;
y = normpdf(x,0,1)
subplot(2,4,1)
plot(x,y)
axis([-5 5 0 1])
title('mean = 0,std dev = 1')
##x = -5:0.5:5;
y = normpdf(x,0,0.5)
subplot(2,4,2)
plot(x,y)
axis([-5 5 0 1])
title('mean = 0,std dev = 5')
x =-5:0.5:5;
y = normpdf(x,1,1)
subplot(2,4,3)
plot(x,y)
axis([-5 5 0 1])
title('mean=1, std dev =1')

##Second part generates random Gaussian signal, computes its PSD and autocorrelation, and plots them.

y = normrnd(0,1,1,200)
#y1 = exprnd(1,1,200)
#y2 = poissrnd(5,1,200)
#y3 = randn(1,200)
Gy = periodogram(y)
Ry = abs(ifft(Gy,256));
Ry = [Ry(130:256)' Ry(1:129)']
t = -127:1:128
##subplot(1,1,1)
##plot(Gy)
##xlabel('frequencysamples')
##title('PSD')
subplot(2,4,5)
plot(t,Ry)
xlabel('time shift')
title('autocorrelation')
##y1 = exprnd(1,1,200)
y1 = poissrnd(5,1,200)
Gy1 = periodogram(y1)
Ry1 = abs(ifft(Gy1,256));
Ry1 = [Ry1(130:256)' Ry1(1:129)']
t = -127:1:128
##subplot(2,4,6)
##plot(Gy)
##xlabel('frequencysamples')
##title('PSD')
subplot(2,4,6)
plot(t,Ry1)
xlabel('time shift1')
title('autocorrelation1_poission')

y2 = exprnd(1,1,200)
##y1 = poissrnd(5,1,200)
Gy2 = periodogram(y2)
Ry2 = abs(ifft(Gy2,256));
Ry2 = [Ry2(130:256)' Ry2(1:129)']
t = -127:1:128
##subplot(2,4,8)
##plot(Gy)
##xlabel('frequencysamples')
##title('PSD')
subplot(2,4,7)
plot(t,Ry2)
xlabel('time shift1')
title('autocorrelation1_exponential')

y3 = randn(1,200)
##y1 = poissrnd(5,1,200)
Gy3 = periodogram(y3)
Ry3 = abs(ifft(Gy3,256));
Ry3 = [Ry3(130:256)' Ry3(1:129)']
t = -127:1:128
##subplot(1,1,1)
##plot(Gy)
##xlabel('frequencysamples')
##title('PSD')
subplot(2,4,8)
plot(t,Ry3)
xlabel('time shift1')
title('autocorrelation1_exponential')
