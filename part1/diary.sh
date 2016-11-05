#!/bin/bash
#diary.sh
#should be placed in Diary folder

#months we will use for the months directory names
declare -a months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

#navigate to directory of this script
cd "${0%/*}"

#grab the current date
myyear=`date +%Y`
mymonth=`date +%m`
myday=`date +%d`	

#change mymonth to relevant string in months	
mymonth=${months[$mymonth-1]}

#create folder and open up the diary entry
mkdir -p $myyear/$mymonth
cd $myyear/$mymonth
touch ${myday}.txt
open ${myday}.txt