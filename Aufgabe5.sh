
generierteZahl=$((RANDOM%101)) 
eigenezahl=999

while [ "$eigenezahl" -ne "$generierteZahl" ] 
do 
    read -p "Wählen sie eine Zahl aus" eigenezahl

    if [ "$eigenezahl" -gt "$generierteZahl" ]
    then 
        echo "Diese Zahl ist zu gross."
    elif [ "$eigenezahl" -lt "$generierteZahl" ]
    then
        echo "Diese Zahl ist zu klein."
    fi 
done
echo "Super die Zahl war $generierteZahl."

