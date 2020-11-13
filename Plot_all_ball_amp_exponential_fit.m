clear;

%Plot all ball amplitudes together post gain switch for exponential model.

% 7 iron amplitude parameters
load('gof_amp_ball_7_iron_exponential.mat');
load('fit_amp_ball_7_iron_exponential.mat');
load('time_at_peaks_amp_ball_7_iron_exponential.mat');
load('amplitude_amp_ball_7_iron_exponential.mat');

% Driver amp parameters

load('time_at_peaks_amp_ball_driver_exponential.mat')
load('amplitude_amp_ball_driver_exponential.mat')
load('fit_amp_ball_driver_exponential.mat')
load('Gof_amp_ball_driver_exponential.mat')

% Wedge amp parameters

load('time_at_peaks_amp_ball_wedge_exponential.mat')
load('amplitude_amp_ball_wedge_exponential.mat')
load('fit_amp_ball_wedge_exponential.mat')
load('gof_amp_ball_wedge_exponential.mat')

%The .mat files above load data from each of the ball amp fitting code
%files. The variable names below have "barsch" at the end but they refer to
%the exponentially fitted data.

plot(time_at_peaks_amp_ball_driver_barsch,amplitude_amp_ball_driver_barsch,'b-');
grid on;
hold on;
plot(time_at_peaks_amp_ball_7_iron_barsch,amplitude_amp_ball_7_iron_barsch,'r-');
hold on;
plot(time_at_peaks_amp_ball_wedge_barsch,amplitude_amp_ball_wedge_barsch,'g-');
title("Actual Ball Amplitude Profiles for the Driver, 7 Iron and Pitching Wedge Shots.",'FontSize', 14);
legend("Driver","7 Iron","Pitching Wedge",'FontSize', 16);
ylabel('Amplitude','FontSize', 16);
xlabel('Time (s)','FontSize', 16);
set(gca,'FontSize',15);
hold off;


% plot(time_at_peaks_amp_ball_driver_barsch,feval(fit_amp_ball_driver_barsch,time_at_peaks_amp_ball_driver_barsch),'b-');
% grid on;
% hold on;
% plot(time_at_peaks_amp_ball_7_iron_barsch,feval(fit_amp_ball_7_iron_barsch,time_at_peaks_amp_ball_7_iron_barsch),'r-');
% hold on;
% plot(time_at_peaks_amp_ball_wedge_barsch,feval(fit_amp_ball_wedge_barsch,time_at_peaks_amp_ball_wedge_barsch),'g-');
% title("Exponential Models of the Amplitude Profiles for the Driver, 7 Iron and Pitching Wedge Shots.",'FontSize', 14);
% legend("Driver","7 Iron","Pitching Wedge",'FontSize', 16);
% ylabel('Amplitude','FontSize', 16);
% xlabel('Time (s)','FontSize', 16);
% set(gca,'FontSize',15);



