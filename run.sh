if [ -f /tmp/.X1-lock ]; then
    rm -f /tmp/.X1-lock
fi
if [ -d /tmp/.X11-unix ]; then
    rm -rf /tmp/.X11-unix
fi
vnc4server
export DISPLAY=$HOSTNAME:1
echo
echo $DISPLAY
echo 
echo $PATH
echo
idl -vm=CCA_CHANGE_DETECTION_IDL_TOT.sav &
xte 'key Return'
sleep 6
xte 'key Return'
sleep 35
xte 'key Return'
