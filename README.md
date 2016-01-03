WiringPi
========

An implementation of most of the Arduino Wiring functions for the Raspberry Pi

Git
===

You will need to clone this repository with the --recursive flag on git clone as it contains WiringPi as a submodule.

Building
========

You will need to first install php-dev or php5-dev

Then

    ./build.sh

This will give you a build folder with the wiringpi.so module, this needs to go in the relevant folder of your PHP installation.

Most likely somewhere in /usr/lib/php5/

Alternatively you can:

    sudo ./install.sh

To choose the pin mapping type that you wish to use, create an ini file /etc/php5/mods-available/wiringpi.ini and adding the following:

    extension=wiringpi.so
    wiringpi.pinmaptype=[PINS|GPIO|USER]
