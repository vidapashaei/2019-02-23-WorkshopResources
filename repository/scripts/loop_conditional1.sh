# $1 is the field to cut
# $2 specifies high or low value to output

for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile
    if [ "$2" = "high" ]  #test whether 2nd argument is "high"
    then
            cut -f "$1" $gapminderfile | sort -n | tail -1
    else
            cut -f "$1" $gapminderfile | sort -n | head -1
    fi #don't forget to end the if test
done
