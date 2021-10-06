
getVolume(){
  echo $(amixer get Master | grep 'Front Left:' | grep -E -o [0-9]+% | grep -E -o [0-9]+)
}

setVolume(){
  newVolume=$1
  amixer set Master $newVolume%
}

checkVolume(){
  volume=$(getVolume)
  echo "the volume is $volume"

  if [ "$volume" -gt 70 ]; then
      echo "$volume ist zu laut!"
      setVolume 20 
  fi
}

while [ true ]
do
  checkVolume
done
