
Alter=$(dialog --inputbox "Wie alt bist du?" 10 30 2>&1 >/dev/tty)
Name=$(dialog --inputbox "Wie heisst du?" 10 30 2>&1 >/dev/tty)
Wohnort=$(dialog --inputbox "Wo wohnst du?" 10 30 2>&1 >/dev/tty)

dialog --yesno "Du wohnst in $Wohnort bist $Alter Jahre alt und heisst $Name." 10 30
Antwort=$?

#Antwort Ja ist 0 und Antwort Nein ist 1
if [ "$Antwort" -eq 1 ]
then
    dialog --msgbox "Schade leider falsche Angaben :(" 10 30
else
    dialog --msgbox "Danke und bis bald  :)" 10 30
fi
#Thanks=$(dialog --msgbox "Danke und bis bald  :)" 10 30 2>&1 >/dev/tty)

