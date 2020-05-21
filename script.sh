
#!/bin/bash


for file in *.jpg;do

	year=$(echo $(basename $file) | cut -d- -f1)
	month=$(echo $(basename $file) | cut -d- -f2)
	index=$(echo $(basename ${file%%.jpg}) | cut -d- -f3)

if [ ! -d "$year" ]; then
        mkdir "$year"
        echo "starting new year: $year"
fi
if [ ! -d "$year/$month" ]; then
        mkdir "$year/$month"
        echo "starting new month in $year : $month"
fi
    echo "moving file $file"
    mv "$file" "$year/$month/photos$index"
done 

