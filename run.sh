cd /srs/trunk/
echo Starting SRS...
objs/srs -c conf/srs.conf
echo Started SRS.
echo Printing tail -f objs/srs.log
tail -f objs/srs.log