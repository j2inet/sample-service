echo "stopping service. Note that the service might not exists yet."
sudo systemctl stop service-sample

echo "--copying files to destination--"
sudo cp ./service-sample /usr/local/bin
sudo cp ./service-sample.service /etc/systemd/system/service-sample.service
echo "--setting permissiongs on file--"
sudo chmod 640 /etc/systemd/system/service-sample.service
echo "--reloading daemon--"
sudo systemctl daemon-reload
echo "--probing service status--"
sudo systemctl status service-sample
echo "--enabling service--"
sudo systemctl enable service-sample
echo "--starting service service status--"
sudo systemctl start service-sample
echo "--probing service status--"
sudo systemctl status service-sample
