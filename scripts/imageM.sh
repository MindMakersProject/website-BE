FILES=./*.jpg
for f in $FILES
do 
  echo "$f"
  test=`convert $f -format "%[fx:(w/h>1)?1:0]" info:`
  if [ $test -eq 1 ]; then
  convert $f -resize 500x -quality 95 $f
  else
  convert $f -resize x500 -quality 95 $f
  fi
done