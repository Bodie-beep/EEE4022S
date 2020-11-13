function [fitresult, gof] = ball_wedge_amp_fit(time_at_peaks, amplitude)
%CREATEFIT1(TIME_AT_PEAKS,AMPLITUDE)
%  Create a fit.
%
%  Data for 'ball_wedge_amp_fit' fit:
%      X Input : time_at_peaks
%      Y Output: amplitude
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 05-Nov-2020 01:41:44


%% Fit: 'ball_wedge_amp_fit'.
[xData, yData] = prepareCurveData( time_at_peaks, amplitude );

% Set up fittype and options.
ft = fittype( 'power1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [166737.641773888 -1.60230474132148];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'ball_wedge_amp_fit' );
h = plot( fitresult, xData, yData );
legend( h, 'Actual', 'Modelled', 'Location', 'NorthEast', 'Interpreter', 'none','FontSize', 16);
title("Ball Amplitude Profile for a Wedge Shot.",'FontSize', 16);
% Label axes
xlabel( 'Time(s)', 'Interpreter', 'none','FontSize', 16);
ylabel( 'Amplitude', 'Interpreter', 'none','FontSize', 16);
grid on


