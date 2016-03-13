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

```
make
```

This will give you a build folder with the wiringpi.so module, this needs to go in the relevant folder of your PHP installation.

Most likely somewhere in /usr/lib/php5/

Alternatively you can:

```
sudo make install
```

This will additionally copy `wiringpi.php` which you can include with:

```php
include(ini_get('extension_dir') . '/wiringpi.php');
```

To choose the pin mapping type that you wish to use, create an ini file /etc/php5/conf.d/wiringpi.ini and adding the following:

```
extension=wiringpi.so
wiringpi.pinmaptype=[PINS|GPIO|USER]
```

To avoid having to change the www-data user to root, you can add it to the relevant groups:

```
sudo adduser www-data i2c
sudo adduser www-data spi
sudo adduser www-data gpio
```
