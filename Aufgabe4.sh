read -p "Wie alt bist du? " Alter

if [ "$Alter" -ge 18  ]
then
    echo "Du darfst schon Auto fahren."
elif [ "$Alter" -lt 18 ] && [ "$Alter" -gt 16 ]
then
    echo "Du darfst Töff fahren."
else  
    echo "Du darfst noch kein Fahrzeug fahren "


fi

