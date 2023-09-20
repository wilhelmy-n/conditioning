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
    writeDigitalPin(DomiNator,ShockDeviceL,1);
    
    for jj = 1:4      
        writePWMVoltage(DomiNator,LEDChannel1,Int);
        pause (.125);
        writePWMVoltage(DomiNator,LEDChannel1,0);
        pause (.125);   
    end

    writeDigitalPin(DomiNator,ShockDeviceL,0);

    for kk = 1:170      
        writePWMVoltage(DomiNator,LEDChannel1,Int);
        pause (.125);
        writePWMVoltage(DomiNator,LEDChannel1,0);
        pause (.125);   
    end
    
    %45s of air only, then apply CS- manually for 60s
    pause(105);
    
    %15min interval between cycles
    pause(900); 
    
end

%expose flies to CS+ manually for 60s
writeDigitalPin(DomiNator,ShockDeviceL,1);

for jj = 1:4      
    writePWMVoltage(DomiNator,LEDChannel1,Int);
    pause (.125);
    writePWMVoltage(DomiNator,LEDChannel1,0);
    pause (.125);   
end

writeDigitalPin(DomiNator,ShockDeviceL,0);

for kk = 1:170     
    writePWMVoltage(DomiNator,LEDChannel1,Int);
    pause (.125);
    writePWMVoltage(DomiNator,LEDChannel1,0);
    pause (.125); 
end

 %45s of air only, then apply CS- manually for 60s
    pause(105);