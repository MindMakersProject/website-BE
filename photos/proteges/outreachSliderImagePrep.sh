FILES=./*.png
for f in $FILES
do 
  echo "$f"
  convert $f -resize 500x500! -fill 'rgba(170, 130, 255, 0.8)' -colorize 80% background.png
  convert $f -resize 500x500 overlay.png
  composite -gravity center overlay.png background.png $f
  rm overlay.png
  rm background.png
done