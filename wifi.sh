# https://github.com/lwfinger/rtlwifi_new/tree/extended

sudo apt-get install dkms git build-essential
git clone -b extended https://github.com/lwfinger/rtlwifi_new.git
sudo dkms add ./rtlwifi_new
sudo dkms install rtlwifi-new/0.6
sudo cp -r rtlwifi_new/firmware/rtlwifi/ /lib/firmware/rtlwifi/
sudo echo "options rtl8723de ant_sel=2" > /etc/modprobe.d/rtl8723de.conf
