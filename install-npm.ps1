# Script to install a NodeJS environment

# First, let's ensure Node itself (and NPM) is installed...
choco install nodejs

# Install the Node softwares we want using NPM
npm install -g typescript
npm install -g tsd
npm install -g yo
npm install -g bower
npm install -g mocha
npm install -g azure-cli
