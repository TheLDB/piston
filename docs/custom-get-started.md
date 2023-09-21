### Custom Get Started that does everything I need it to


- Installs Docker
- Installs NodeJS & NPM
- Updates Node
- Clones my custom Piston
- Switches to development
- Starts a dev server
- Builds my custom package
- Installs my custom package
- Runs a test to ensure it worked

```sh
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && sudo apt update -y && sudo apt install nodejs npm -y && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && source ~/.bashrc && nvm install node && git clone https://github.com/TheLDB/piston && cd piston/cli && npm i && cd .. && ./piston select dev && sudo ./piston start && ./piston build-pkg typescript custom && ./piston ppman install typescript=custom && ./piston run typescript -l custom packages/typescript/custom/test.*
```