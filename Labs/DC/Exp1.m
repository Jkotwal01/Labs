%Name: Jay Kotwal
% Roll_No: 32137
clc;
clear;
close all;

Name=input("Enter the Name: ",'s');
Roll_No=input("Enter the Roll Number: ");  
disp(Name);
disp(Roll_No);
pkg load statistics;
%                            EXPERIMENT-1 <<Part-A>>
% Write a program to plot PDF of a Gaussian (Normal) Random Variable for:
%      CASE-1 Standard Gaussian: mean = 0 and standard deviation = 1
%      CASE-2 General Gaussian: mean = 1 and standard deviation = 1
%      CASE-3 General Gaussian: mean = -1 and standard deviation = 1
%      CASE-4 General Gaussian: mean = 0 and standard deviation = 1.5
%      CASE-5 General Gaussian: mean = 0 and standard deviation = 0.5
%      CASE-6 General Gaussian: mean = 1 and standard deviation = 0.5

% Plotting Case-1:
  m = 0;        # Given: mean = 0
  sd = 1;       # Given: standard deviation = 1
  x=-6:0.1:6; # Define suitable range of x values (as per our choice).
  y=normpdf(x,m,sd); # Calculate values of Normal PDF for all xs.
# Note: The 'normpdf' function belongs to the statistics package.
#       To load the package,run 'pkg load statistics' from the Octave prompt
#       in command window before running this program.

  figure(1)   # Open a figure window named as figure-1.
# We wish to plot all the cases (Total 6 Plots) in the same figure window.
# Use 2 rows & 3 columns so that we have total 6 plots as shown below.
#           +-----+-----+-----+
#           |  1  |  2  |  3  |
#           +-----+-----+-----+
#           |  4  |  5  |  6  |
#           +-----+-----+-----+
  subplot(2,3,1)  # The plot (Case-1) will be on location-1 as shown above.
  plot(x,y)       # To plot Case-1 (y vs x).
  axis([-6 6 0 1]) # x-axis ranges from -6 to 6 & y-axis ranges from 0 to 1.
  xlabel('x values----->');
  ylabel('PDF--->');
  title('CASE-1: mean=0, std dev=1') # Title of the plot
  grid on;

% Plotting Case-2:
% Write the code yourself to plot Case-2 on Location-2 with given mean and
% standard deviation.
  m = 1;        # Given: mean = 1
  sd = 1;       # Given: standard deviation = 1
  x=-6:0.1:6; # Define suitable range of x values (as per our choice).
  y=normpdf(x,m,sd); # Calculate values of Normal PDF for all xs.
  subplot(2,3,2)  # The plot (Case-1) will be on location-1 as shown above.
  plot(x,y)       # To plot Case-1 (y vs x).
  axis([-6 6 0 1]) # x-axis ranges from -10 to 10 & y-axis ranges from 0 to 1.
  xlabel('x values----->');
  ylabel('PDF--->');
  title('CASE-2: mean=1, std dev=1') # Title of the plot
  grid on;

% Plotting Case-3:
% Write the code yourself to plot Case-2 on Location-3 with given mean and
% standard deviation.
m=-1;
sd= 1;
x=-6:0.1:6;
y=normpdf(x,m,sd);
subplot(2,3,3);
plot(x,y);
axis([-6 6 0 1]);
xlabel('x Values ---->');
ylabel('PDF--->');
title('CASE-3: mean=-1 std=1');
grid on;

% Plotting Case-4:
% Write the code yourself to plot Case-2 on Location-4 with given mean and
% standard deviation.
m=0;
sd= 1.5;
x=-6:0.1:6;
y=normpdf(x,m,sd);
subplot(2,3,4);
plot(x,y);
axis([-6 6 0 1]);
xlabel('x Values ---->');
ylabel('PDF--->');
title('CASE-4: mean=0 std=1.5');
grid on;

% Plotting Case-5:
% Write the code yourself to plot Case-2 on Location-5 with given mean and
% standard deviation.
m=0;
sd= 0.5;
x=-6:0.1:6;
y=normpdf(x,m,sd);
subplot(2,3,5);
plot(x,y);
axis([-6 6 0 1]);
xlabel('x Values ---->');
ylabel('PDF--->');
title('CASE-5: mean=0 std=0.5');
grid on;

% Plotting Case-6:
% Write the code yourself to plot Case-2 on Location-6 with given mean and
% standard deviation.
% standard deviation.clc;
m=-1;
sd= 0.5;
x=-6:0.1:6;
y=normpdf(x,m,sd);
subplot(2,3,6);
plot(x,y);
axis([-6 6 0 1]);
xlabel('x Values ---->');
ylabel('PDF--->');
title('CASE-6: mean=1 std=0.5');
grid on;