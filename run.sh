if [ -f /tmp/.X1-lock ]; then
    rm -f /tmp/.X1-lock
fi
if [ -d /tmp/.X11-unix ]; then
    rm -rf /tmp/.X11-unix
fi
vnc4server
export DISPLAY=$HOSTNAME:1
export PATH=$PATH:/usr/local/exelis/idl85/bin
idl -vm=CCA_CHANGE_DETECTION_IDL_TOT.sav &
xte 'key Return'
echo
echo 'primo invio'
echo
sleep 6
xte 'key Return'
echo 
echo 'secondo invio'
echo
sleep 35
xte 'key Return'
echo
echo 'terzo invio'
echo
