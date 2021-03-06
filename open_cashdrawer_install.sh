#!/bin/bash
#applied to ubuntu 16.04
KO="kioskoperator"
SCRIPT_FOLDER="/home/kioskoperator/open_cashdrawer"
FOLDER="/usr/share/applications"
FILENAME="open_cashdrawer.desktop"
/bin/rm $FOLDER/$FILENAME 1>/dev/null 2>&1
/bin/chmod +x $SCRIPT_FOLDER/open_cashdrawer.sh
/usr/bin/touch $FOLDER/$FILENAME
/bin/chown -R $KO:$KO $SCRIPT_FOLDER 
echo "[Desktop Entry]" >> $FOLDER/$FILENAME
echo "Type=Application" >> $FOLDER/$FILENAME
echo "Terminal=false" >> $FOLDER/$FILENAME
echo "Name=OPEN CASHDRAWER" >> $FOLDER/$FILENAME
echo "Icon=$SCRIPT_FOLDER/logo.png" >> $FOLDER/$FILENAME
echo "Exec=$SCRIPT_FOLDER/open_cashdrawer.sh" >> $FOLDER/$FILENAME

/usr/bin/update-desktop-database
