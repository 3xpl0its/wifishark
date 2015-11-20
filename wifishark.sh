clear
echo "






"
echo "          [*] WİFİSHARK "
echo "          [*] Yapımcı : muhammetardayildiz "
echo "          [*] muhammetarda.esy.es "
echo "

"

id | grep "root" >/dev/null 2>&1
if [ $? != 0 ]; then
  echo "[!]$0 Root erişimi yok "
  echo "Çıkıyor!"
  exit 1
fi 
if [ "$1" == "r" ]; then 
  echo "[+] Başlıyor !"
fi
if [ -d /data/res_wfi/ ]; then
echo "[!] Klasör Var !"
else
  echo "[+] Dosya Yaratıldı!"
  mkdir /data/res_wifi/
  echo "[!] Dosya Yaratıldı!"
fi
if [ -f /data/misc/wifi/wpa_supplicant.conf ]; then
echo "[!] Dosyası Yok ! "
cp /data/misc/wifi/wpa_supplicant.conf /data/res_wifi
else 
  echo "[!] Dosya Bulunamadı ! "
fi 
grep ssid /data/res_wifi/wpa_supplicant.conf && grep psk /data/res_wifi/wpa_supplicant.conf && grep key_mgmt /data/res_wifi/wpa_supplicant.conf

echo "[!] İşlem tamam ..."
echo "[!] Yapımcı : muhammetardayildiz"
echo "[*] muhammetarda.esy.es "
echo "[!] Github : github.com/muhammetardayildiz"
