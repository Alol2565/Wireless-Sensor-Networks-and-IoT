%% Receiver Parameters
fs = 2.3e8/600e-9;                      % Baseband Sampling Rate (65105 to 61.44e6 Hz)
ts = 1/fs;                      % Baseband Sampling Time
pkt_size = 1e5;                 % Number of Symbol in Each Packet
rx_alg = 0;                     % Receiver Detection Algorithm
cmpnst_mode = 0;                % Compensation Mode (0: No Compensation, 1: Amplitude Compensation, 2: Phase Compensation, 3: Compensation) 
delay_cmpnst = 0;               % Delay Compensation

pulse_gen_mode = 'conv';        % Pulse Shaping Mode
rx_mode = 'matched_filter';     % Receiver Type ('matched_filter' or 'correlator')

%% Modulation Parameters
modulation = 'psk';             % Modulation Name ('psk', 'pam', 'qam', 'fsk')
k = 2;                          % Bit Per Symbol
M = 2^k;                        % Modulation Order

smpl_per_symbl = 8;             % Sample Per Symbol
Ts = smpl_per_symbl*ts;         % Symbol Time

flg_gray_encode = 1;            % Gray Code Usage Flag
mod_det_opt = 'noncoherent';       % Modulation Detection Option ('coherent', 'noncoherent')

% Pulse Shape Parameters
pulse_name = 'triangular';      % Name of Pulse Shaping Function
beta = 0.9;                    % Parameter for RC, RRC and Gaussian Pulse Shape
span_in_symbl = 1;              % Trunctation Length for RC, RRC and Gaussian Pulse Shape (Multiple of Symbol Time)

% Header Option
flg_add_hdr = 0;                % Flag For Having Packets with Header

% SNR Bound for BER Plots
snr_min = 0;				  	% Minimum SNR (dB)
snr_max = 10;				  	% Maximum SNR (dB)
snr_step = 1;		        	% SNR Step (dB)
snr_db = snr_min:snr_step:snr_max;  % SNR Vector (dB)

%% Channel Parameters
chnl_delay_in_smpl = 0;         % Channel Delay in Sample
chnl_phase_offset = 0 * pi/180; % Channel Phase Offset

%% Plot Parameters
constellation_plot = 1;