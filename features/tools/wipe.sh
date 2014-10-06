#!/tmp/bash
# Remove content of /data partition excluding data/media files

#Navigate to /data folder
cd /data

#Regular expression, FILES==Everything in the current folder
FILES=(*)

#For loop, for files in FILES, do...
for i in *; do

#If file isn't in the media folder
if [ "$i" != "media" ]

#Then delete it
then rm -R "$i"

#Finish when there are no more files that aren't in the media folder
fi
done

