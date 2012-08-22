mkdir build
cd build
gcc `php-config --includes` -fpic -c ../wiringpi_wrap.c ../WiringPi/wiringPi/wiringPi.c ../WiringPi/wiringPi/wiringShift.c ../WiringPi/wiringPi/wiringSerial.c
gcc -shared wiringpi_wrap.o wiringPi.o wiringSerial.o wiringShift.o -o wiringpi.so
