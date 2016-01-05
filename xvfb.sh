#!/bin/bash
set +x
set +e
set -m

password="${VNC_PASSWORD:-xvfb}"
export DISPLAY="${DISPLAY:-:0}"

Xvfb $DISPLAY "$@"&
x11vnc --passwd "$password" --shared -bg
xhost \+
fg 1
