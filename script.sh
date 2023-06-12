echo "******************"
echo "Script by Trisout"
echo "******************"
echo "Warning: This Script is made for 18.0.53 of plesk panel. It is possible that it does not work or that it destroys your plesk on higher versions."
read -p
sleep 5
rm -rf /usr/local/psa/admin/htdocs/modules/OsSav
plesk bin extension --uninstall OsSav
rm /opt/psa/admin/cp/public/javascript/main.js
cd /opt/psa/admin/cp/public/javascript
wget https://raw.githubusercontent.com/trisout78/o-plesk/main/main.js
plesk repair all -y
