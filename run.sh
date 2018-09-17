if [ -f /tmp/.X1-lock ]; then
    rm -f /tmp/.X1-lock
fi
if [ -d /tmp/.X11-unix ]; then
    rm -rf /tmp/.X11-unix
fi
vnc4server
export DISPLAY=$HOSTNAME:1
export PATH=$PATH:/usr/local/exelis/idl85/bin
echo '_____________________________________________'
echo 'DIRECTORY ROOT'
ls -al /
echo '_____________________________________________'
echo 'DIRECTORY CORRENTE'
ls -al 
echo '_____________________________________________'
xte 'sleep 30' 'key Return' &
xte 'sleep 60' 'key Return' &
idl -vm=CCA_CHANGE_DETECTION_IDL_TOT.sav 

