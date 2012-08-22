WiringPi
========

An implementation of most of the Arduino Wiring functions for the Raspberry Pi

Building
========

You will need to first install php-dev or php5-dev

Then

    chmod +x build.sh
    ./build.sh

This will give you a build folder with the wiringpi.so module, this needs to go in the relevant folder of your PHP installation.

Most likely somewhere in /usr/lib/php5/

Alternatively you can:

    chmod +x install.sh
    sudo ./install.sh
