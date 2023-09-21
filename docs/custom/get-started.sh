# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
# Install NodeJS & NPM
sudo DEBIAN_FRONTEND=noninteractive apt update -y
sudo DEBIAN_FRONTEND=noninteractive apt install -y nodejs npm
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.bashrc
# Install / Use latest version of Node
nvm install node
# Clone Piston Fork
git clone https://github.com/TheLDB/piston
cd piston/cli
# Install CLI Deps
npm i
cd ..
# Switch to dev environment
./piston select dev
# Start Server
sudo ./piston start
# Build Custom Package
sudo ./piston build-pkg typescript farcaster
# Install Custom Package
./piston ppman install typescript=farcaster
# Run Test
./piston run typescript -l farcaster packages/typescript/farcaster/test.*