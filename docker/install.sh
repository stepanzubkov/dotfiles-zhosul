# Or, follow steps from there:
# https://docs.docker.com/engine/install/ubuntu/

# Uninstall old versions.
sudo apt-get remove docker docker-engine docker.io containerd runc

# Prepare && update.
sudo apt-get update

# Add Docker GPG key.
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up repository.
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine.
# Error occured? Try this: sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Finally, start service.
sudo service docker start

# If you want, You may try to test with Hello, World! Image.
# sudo docker run hello-world

# Enable auto start on non Debian/Ubuntu.
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Install Docker-Compose.
# (This will download compose script and set execute permissions to it)
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
