function [Spec_t,freq,Spectrogram_mag,Spectrogram] = spectrogram_function(signal,window,overlap,nfft,fs)
    %INPUTS:
        % signal = input signal
        % window = window as row vector
        % nfft = size fft
        % fs = sampling frequency
        
    %OUTPUTS:
        % Spec_t = time used in spec plot (Averaged over each frame)
        % freq = frequency spectrum of Spec
        % Spectrogram_mag = Spectrogram magnitude (dB) used for plot
        % Spectrogram = Spectrogram as complex values

    L_window = length(window); % Length of window
    freq = (0:ceil((1+nfft)/2)-1)*(fs/(nfft)); %Frequency for single-sided spectrum in HZ
    N = length(signal); % Number of samples
    nframes = 1+floor((N-L_window)/(L_window-overlap)); % Number of frames

    Spec = zeros(length(freq),nframes); %Setting up STFT matrix
    Spec_mag = zeros(length(freq),nframes); % Magnitude of STFT used for plotting 
    Spec_t = zeros(1,nframes); %Spectrogram time used for plotting

    for i = 1:nframes
     
        start = 1 + (L_window-overlap)*(i-1);% Starting time/sample of current segment
        segment = window.*signal(start:start+L_window-1); % Window chirp signal to get current segment
        Spec_time = (start - 1 + (1+L_window)/2)/fs; % Average time of each frame
        Spec_t(i) = Spec_time;
     
        S = fft(segment,nfft); %FFT of current windowed portion/segment
        S = S(1:ceil((1+nfft)/2)); % Single sided spectrum
        Spec(:,i) = S.'; % Define column i of spectrogram
     
        S_mag = 20*log10((2*abs(S/nfft))); % Magnitude (in dB) used for plotting  
                                       % magnitude(STFT)^2 = Spectrogram. In dB: 10log10()^2 = 20log10()
        
        Spec_mag(:,i) = S_mag.'; % Define column i of spectrogram magnitude
        
%         frame = Spec_mag(:,i); % Current time frame
%         index = frame==max(frame); % Find freq. index at peak of FFT
%         freq_at_peaks(i) = freq(index); % Frequency corresponding to FFT peak
        
    end 

    Spectrogram = Spec;
    Spectrogram_mag = Spec_mag;

end