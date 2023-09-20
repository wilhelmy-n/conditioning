% The original code was written by Benjamin Escribano
% (https://github.com/BenjaminEscribano) and adapted by Nina Wilhelmy.

%Parameters for the conditioning protocol
XTimesPaired=1;
loops=XTimesPaired-1;

%LED Intensity:
PercentIntensity=100;
Int=PercentIntensity*0.05;

%LED Pulse Frequency:


%Conditioning protocol:
pause(10) % 3min habituation time

for ii = 1 : loops
    
    writeDigitalPin(DomiNator,ShockDeviceL,1);
    writePWMVoltage(DomiNator,LEDChannel1,Int);
    pause(5);
    writeDigitalPin(DomiNator,ShockDeviceL,0);
    pause(55);
    writePWMVoltage(DomiNator,LEDChannel1,0);
    
    pause(900);
    
end

writeDigitalPin(DomiNator,ShockDeviceL,1);
writePWMVoltage(DomiNator,LEDChannel1,Int);
pause(5);
writeDigitalPin(DomiNator,ShockDeviceL,0);
pause(55);
writePWMVoltage(DomiNator,LEDChannel1,0);