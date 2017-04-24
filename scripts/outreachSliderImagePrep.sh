FILES=./*.jpg
for f in $FILES
do 
  echo "$f"
  convert $f -resize 500x500! -fill 'rgba(170, 130, 255, 0.8)' -colorize 80% background.jpg
  convert $f -resize 500x500 overlay.jpg
  composite -gravity center overlay.jpg background.jpg $f
  rm overlay.jpg
  rm background.jpg
done