clear;

% 7 iron amplitude parameters
load('gof_amp_ball_7_iron.mat');
load('fit_amp_ball_7_iron.mat');
load('time_at_peaks_amp_ball_7_iron.mat');
load('amplitude_amp_ball_7_iron.mat');

% Driver amp parameters

load('time_at_peaks_amp_ball_driver.mat')
load('amplitude_amp_ball_driver.mat')
load('fit_amp_ball_driver.mat')
load('Gof_amp_ball_driver.mat')

% Wedge amp parameters

load('time_at_peaks_amp_ball_wedge.mat')
load('amplitude_amp_ball_wedge.mat')
load('fit_amp_ball_wedge.mat')
load('gof_amp_ball_wedge.mat')



% plot(time_at_peaks_amp_ball_driver,amplitude_amp_ball_driver,'b-');
% grid on;
% hold on;
% plot(time_at_peaks_amp_ball_7_iron,amplitude_amp_ball_7_iron,'r-');
% hold on;
% plot(time_at_peaks_amp_ball_wedge,amplitude_amp_ball_wedge,'g-');
% title("Actual Ball Amplitude Profiles for the Driver, 7 Iron and Pitching Wedge Shots.",'FontSize', 14);
% legend("Driver","7 Iron","Pitching Wedge",'FontSize', 16);
% ylabel('Amplitude','FontSize', 16);
% xlabel('Time (s)','FontSize', 16);
% set(gca,'FontSize',15);
% hold off;


plot(time_at_peaks_amp_ball_driver,feval(fit_amp_ball_driver,time_at_peaks_amp_ball_driver),'b-');
grid on;
hold on;
plot(time_at_peaks_amp_ball_7_iron,feval(fit_amp_ball_7_iron,time_at_peaks_amp_ball_7_iron),'r-');
hold on;
plot(time_at_peaks_amp_ball_wedge,feval(fit_amp_ball_wedge,time_at_peaks_amp_ball_wedge),'g-');
title("Modelled Ball Amplitude Profiles for the Driver, 7 Iron and Pitching Wedge Shots.",'FontSize', 14);
legend("Driver","7 Iron","Pitching Wedge",'FontSize', 16);
ylabel('Amplitude','FontSize', 16);
xlabel('Time (s)','FontSize', 16);
set(gca,'FontSize',15);



