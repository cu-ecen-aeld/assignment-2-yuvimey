writefile=$1
writestr=$2
if [ "$writefile" = "" ] || [ "$writestr" = "" ]; then
	exit 1
fi
directname=$(dirname $writefile)
errmsg1=$(mkdir -p $directname)
if [ "$errmsg1" != "" ]; then
        echo $errmsg1
        exit 1
fi
errmsg2=$(echo "$writestr" > $writefile)
if [ "$errmsg2" != "" ]; then
	echo $errmsg2
	exit 1
fi
