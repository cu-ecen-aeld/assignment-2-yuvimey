filesdir=$1
searchstr=$2
if [ "$filesdir" = "" ] || [ "$searchstr" = "" ]; then
	exit 1
fi
cdstr=$(cd $filesdir)
if [ "$cdstr" != "" ]; then
	exit 1
fi
files_num=$(find $filesdir -type f | wc -l)
str_num=$(grep -R $filesdir -e $searchstr | wc -l)
echo "The number of files are $files_num and the number of matching lines are $str_num"
