% The original code was written by Benjamin Escribano
% (https://github.com/BenjaminEscribano) and adapted by Nina Wilhelmy.

%Parameters for the conditioning protocol
XTimesPaired=5;
loops=XTimesPaired-1;

%LED Intensity:
PercentIntensity=100;
Int=PercentIntensity*0.05;

%LED Pulse Frequency:


%Conditioning protocol:
pause(180) % 3min habituation time

for ii = 1 : loops
    
    %expose flies to CS+ manually for 60s
    writePWMVoltage(DomiNator,LEDChannel1,Int);
    pause(60);
    writePWMVoltage(DomiNator,LEDChannel1,0);
    
    %45s of air only, then apply CS- manually for 60s
    pause(105);
    
    %15min interval between cycles
    pause(900); 
    
end

%expose flies to CS+ manually for 60s
  writePWMVoltage(DomiNator,LEDChannel1,Int);
  pause(60);
  writePWMVoltage(DomiNator,LEDChannel1,0);

 %45s of air only, then apply CS- manually for 60s
 pause(105);