#!/bin/bash
brightness="$(cat /sys/class/backlight/amdgpu_bl1/actual_brightness)"

echo "$(expr $brightness - 1)" > /sys/class/backlight/amdgpu_bl1/brightness