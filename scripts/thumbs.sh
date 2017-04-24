FILES=./*.jpg
for f in $FILES
do 
  echo "$f"
  convert $f -thumbnail 200x200^ -gravity center -extent 200x200  $f
done