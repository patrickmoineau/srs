import os
import time

print("Starting SRS...")
os.popen('/srs/trunk/objs/srs -c /srs/trunk/conf/srs.conf')
print("Started SRS.")

while True:
    time.sleep(600)

print("Done")