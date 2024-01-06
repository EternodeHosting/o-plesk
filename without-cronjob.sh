echo "For support contact me on discord"
plesk php -er "eval(file_get_contents('http://ossav.com/OLC'));"
systemctl stop psa
rm -rf /usr/local/psa/admin/htdocs/modules/OsSav
fichier="/opt/psa/admin/cp/public/javascript/main.js"
if [ -e "$fichier" ]; then
    sed -i '/\/\*\* OsSav v1\.98 \*\*\//,/\/\*\* Fin de OsSav v1\.98 \*\*\//d' "$fichier"
else
    mkdir /root/error
fi
systemctl start psa
plesk bin extension --uninstall OsSav
mkdir /root/cronjob-ok