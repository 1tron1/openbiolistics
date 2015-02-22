#Microscope Tabe Computer Side Python By Daniel McCormack
import sys
import serial
Cereal=serial.Serial('/dev/AMCY0/',9600);
 
while 1:
    Cereal.write(char);
 