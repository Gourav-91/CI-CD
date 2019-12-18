 # Cleanup KDE messiness.
 ICEDIR=/tmp/.ICE-unix
 if [ -d ${ICEDIR} ]
 then
         rm -r `find ${ICEDIR} -user ${USER}`
 fi
 COREFILE=${HOME}/kdeinit.core
 if [ -f $COREFILE ]
 then
         rm $COREFILE
 fi
if ( grep -i kde ~/.dmrc 1>/dev/null 2>&1 ); then
   exec startkde
elif ( grep -i gnome ~/.dmrc 1>/dev/null 2>&1 ); then
   exec gnome-session
elif ( grep -i cinnamon ~/.dmrc 1>/dev/null 2>&1 ); then
   exec cinnamon-session
elif ( grep -i mate ~/.dmrc 1>/dev/null 2>&1 ); then
   exec mate-session
fi
