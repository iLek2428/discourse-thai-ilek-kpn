#!/bin/bash
# A simple script to reload translations from github

cd /tmp
git clone https://github.com/iLek2428/discourse-thai-ilek-kpn.git
cp -rT discourse-thai-ilek-kpn/ /var/www/discourse/
cp -f discourse-thai-ilek-kpn/reload_ilek2428.sh /root/reload_ilek2428.sh
chmod +x /root/reload_ilek2428.sh
rm -rf discourse-thai-ilek-kpn
cd /var/www/discourse
sudo -u discourse RAILS_ENV=production bundle exec rake assets:clobber assets:precompile
