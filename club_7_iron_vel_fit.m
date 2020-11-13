function [fitresult, gof] = club_7_iron_vel_fit(time_at_peaks, vel_at_peaks)
%CREATEFIT(TIME_AT_PEAKS,VEL_AT_PEAKS)
%  Create a fit.
%
%  Data for 'Club_7_Iron_vel_fit' fit:
%      X Input : time_at_peaks
%      Y Output: vel_at_peaks
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 28-Oct-2020 18:40:20


%% Fit: 'Club_7_Iron_vel_fit'.
[xData, yData] = prepareCurveData( time_at_peaks, vel_at_peaks );

% Set up fittype and options.
ft = fittype( 'poly2' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'Club_7_Iron_vel_fit' );
h = plot( fitresult, xData, yData );

title("Velocity Profile of 7 Iron Swing",'FontSize', 16);
legend( h, 'Actual', 'Modelled', 'Location', 'SouthEast', 'Interpreter', 'none' ,'FontSize', 16);

% Label axes
xlabel( 'Time (s)', 'Interpreter', 'none' ,'FontSize', 16);
ylabel( 'Velocity (m/s)', 'Interpreter', 'none' ,'FontSize', 16);
grid on

