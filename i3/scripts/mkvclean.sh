#!/bin/bash -e

# a script that extracts the subtitle file of every mkv movie file and saves it with the same name
# copy to the folder where the mkv files live and run "./mkvextractTracks.sh" in terminal
# options: [trackID]
# example: ./mkvclean.sh 3

cd $PWD

if [ $# -gt 0 ]
    then
    trackID=$1
    hasSub=true
    mkdir -p subtitles
fi 

for f in *; do
  if [[ $f == *.mkv ]];
    then
    ffmpeg -loglevel error -i "$f" -codec copy "${f//mkv/mp4}"
    if [[ $hasSub ]]
        then
	    mkvextract tracks "$f" $trackID:"${f//mkv/ass}"
	    mv "${f//mkv/ass}" subtitles
    fi
  fi
done

echo "Complete"
