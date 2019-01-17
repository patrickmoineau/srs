echo Starting SRS...
/srs/trunk/objs/srs -c /srs/trunk/conf/srs.conf
echo Started SRS.
echo Printing tail -f /srs/trunk/objs/srs.log
tail -f /srs/trunk/objs/srs.log