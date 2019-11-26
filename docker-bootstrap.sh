echo "Setting up docker (assumes sudo)"
apt-get --force-yes --assume-yes install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
apt-get install --force-yes --assume-yes \
        docker-ce docker-ce-cli containerd.io

mkdir /etc/systemd/system/docker.service.d/
echo '[Service]
ExecStart=
ExecStart=/usr/bin/dockerd' > /etc/systemd/system/docker.service.d/docker.conf 
echo '{"hosts": ["tcp://0.0.0.0:2375", "fd://"]}' > /etc/docker/daemon.json 

cat /etc/systemd/system/docker.service.d/docker.conf 
cat /etc/docker/daemon.json 

echo "Restarting docker"
systemctl daemon-reload
systemctl restart docker

docker run hello-world