#!/bin/sh

XUBUNTU=rig1

MINERU1=dr6use4tsa.rig1
MINERP1=x

MINERU2=se5y45q23r.rig1
MINERP2=x

export DISPLAY=:0
export GPU_MAX_ALLOC_PERCENT=100
export GPU_USE_SYNC_OBJECTS=1
cd /home/$XUBUNTU/cgminer-2.11.4-x86_64-built

#THIS IS 7950
./cgminer --scrypt -I 20 -g 1 -w 256 --thread-concurrency 21712 --gpu-engine 1050 --gpu-memclock 1400 --gpu-vddc 1.087 --temp-target 80 --auto-fan -o stratum+tcp://ftc.give-me-coins.com:3336 -u $MINERU1 -p $MINERP1 --failover-only -o stratum+tcp://coinotron.com:3337 -u $MINERU2 -p $MINERP2

#THIS IS 7970
./cgminer --scrypt -I 13 -g 5 -w 256 --thread-concurrency 8192 --gpu-engine 1140 --gpu-memclock 1500 --gpu-powertune 20 --gpu-vddc 1.170 --temp-target 60 --auto-fan -o stratum+tcp://ftc.give-me-coins.com:3336 -u $MINERU1 -p $MINERP1 --failover-only -o stratum+tcp://coinotron.com:3337 -u $MINERU2 -p $MINERP2
