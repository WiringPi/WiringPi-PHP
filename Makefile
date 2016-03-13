SHELL:=/bin/bash -O extglob

BUILD_DIR = build
INCDIR = WiringPi/wiringPi/
LIB = wiringpi

CFLAGS = -c -fpic `php-config --includes` -I${INCDIR}

SOURCES = wiringpi_wrap.c $(wildcard WiringPi/devLib/*.c) $(wildcard WiringPi/wiringPi/*c)

SOURCES := $(filter-out WiringPi/devLib/piFaceOld.c,$(SOURCES))

#$(info ${SOURCES})

OBJECTS=$(addprefix $(BUILD_DIR)/,$(notdir $(SOURCES:.c=.o)))

#$(info ${OBJECTS})

all: $(BUILD_DIR) $(SOURCES) $(LIB)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(LIB): $(OBJECTS)
	gcc -shared $(BUILD_DIR)/*.o -o $(BUILD_DIR)/$(LIB).so

$(BUILD_DIR)/%.o: %.c
	gcc $(CFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: WiringPi/wiringPi/%.c
	gcc $(CFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: WiringPi/devLib/%.c
	gcc $(CFLAGS) -o $@ $<

install:
	cp $(BUILD_DIR)/$(LIB).so `php-config --extension-dir`
	cp wiringpi.php `php-config --extension-dir`

clean:
	rm -rf $(BUILD_DIR)

.PHONY: clean
