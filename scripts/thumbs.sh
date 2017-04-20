FILES=./*.jpg
for f in $FILES
do 
  echo "$f"
  convert $f -resize 200x200! $f
done