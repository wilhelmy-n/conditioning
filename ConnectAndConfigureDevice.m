%This code was written by Benjamin Escribano
%(https://github.com/BenjaminEscribano)

clear

%Establishing connection to Arduino
%DomiNator=arduino;
%since update ardiono port and version must be specified
DomiNator=arduino('/dev/cu.usbmodem1441201', 'Uno');

%Defining Ports and Valves,LEDs and Shock
AirL='A2'; %Ventil 1
AirR='A3'; %Ventil 2
MCHL='D2'; %Ventil 3
OCTL='D3'; %Ventil 4
MCHR='D4'; %Ventil 5
OCTR='D5'; %Ventil 6


CleanMCH='D6'; %Ventil 7 N.C.

CleanOCT='D7'; %Ventil 8 N.C.

ShockDeviceL='D8'; %BNC out 1
ShockDeviceR='D11'; %BNC out 2

LEDChannel1='D9'; %PWM
LEDChannel2='D10'; %PWM

%writeDigitalPin(DomiNator,LEDChannel1,0);
%writeDigitalPin(DomiNator,LEDChannel2,0);
configurePin(DomiNator,LEDChannel1, 'PWM')
configurePin(DomiNator,LEDChannel2, 'PWM')
%PWM voltage from 0-5 for LED intensity
writePWMVoltage(DomiNator,LEDChannel1,0);
writePWMVoltage(DomiNator,LEDChannel2,0);

    writeDigitalPin(DomiNator,AirL,1);
    pause(0.25);
    writeDigitalPin(DomiNator,AirL,0);
    writeDigitalPin(DomiNator,AirR,1);
    pause(0.25);
    writeDigitalPin(DomiNator,AirR,0);
    writeDigitalPin(DomiNator,MCHL,1);
    pause(0.25);
    writeDigitalPin(DomiNator,MCHL,0);
    writeDigitalPin(DomiNator,OCTL,1);
    pause(0.25);
    writeDigitalPin(DomiNator,OCTL,0);
    writeDigitalPin(DomiNator,MCHR,1);
    pause(0.25);
    writeDigitalPin(DomiNator,MCHR,0);
    writeDigitalPin(DomiNator,OCTR,1);
    pause(0.25);
    writeDigitalPin(DomiNator,OCTR,0);
    writeDigitalPin(DomiNator,CleanMCH,1);
    pause(0.25);
    writeDigitalPin(DomiNator,CleanMCH,0);
    writeDigitalPin(DomiNator,CleanOCT,1);
    pause(0.25);
    writeDigitalPin(DomiNator,CleanOCT,0);
