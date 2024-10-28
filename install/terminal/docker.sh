# Install Docker engine and standard plugins
yay -S docker docker-compose --noconfirm

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Log into group docker
newgrp docker

# Limit log size to avoid running out of disk
sudo mkdir -p /etc/docker
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json

# Enable docker service
sudo systemctl enable docker.service

# Start docker service
sudo systemctl restart docker.service

