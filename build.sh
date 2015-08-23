mkdir build
cd build
gcc `php-config --includes` -fpic -c ../wiringpi_wrap.c ../WiringPi/wiringPi/wiringPi.c ../WiringPi/wiringPi/wiringShift.c ../WiringPi/wiringPi/wiringSerial.c ../WiringPi/wiringPi/piHiPri.c ../WiringPi/wiringPi/softPwm.c ../WiringPi/wiringPi/softServo.c ../WiringPi/wiringPi/softTone.c
gcc -shared wiringpi_wrap.o wiringPi.o wiringSerial.o piHiPri.o wiringShift.o softPwm.o softServo.o softTone.o -o wiringpi.so
