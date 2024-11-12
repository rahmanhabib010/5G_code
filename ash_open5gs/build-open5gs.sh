#!/bin/bash

meson build --prefix=/home/cci/ashish/ash_open5gs/install
ninja -C build
