sudo yum install docker git -y 
sudo systemctl start docker
echo "-----installing docker compose-------"
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
echo "-----Installed docker compose-------"
mkdir work 
cd work
echo "----Cloneing invo----"
git clone https://github.com/asemhostaway/invo.git
cd invo
echo "------Listing runnning containers-----"
sudo docker ps -s
echo "-----WarmUp invo via docker-compose-----"
sudo docker-compose up -d
