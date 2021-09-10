echo y | rita delete-database Company_ThreatReport_24hrs
sudo rm -r * /var/www/html/*
rita import --rolling /opt/zeek/logs/$(date --date='-1 hour' +\%Y-\%m-\%d)/ Company_ThreatReport_24hrs
rita html-report
cd Company_ThreatReport_24hrs
sudo mv *  /var/www/html
cd
clear



Copy to txt editor save as sh file 
run sudo chmod +x file.sh
add to cron to run ever 1 hour
