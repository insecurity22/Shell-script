#! /bin/bash
# After installing nodejs, please install express.

cd ../../react_frontend

# EXPRESS
echo -e "1. Install express-generator module."
sudo npm install -g express-generator

echo -e "2. Create a project\n"
echo -e "Please enter jade or ejs template : "
read template
if [ ${template} == 'jade' ]
then
    express express_backend
elif [ ${template} == 'ejs' ] # <---
then
    express --ejs express_backend
else
    echo -e "Please enter again"
    exit
fi

echo -e "\n3. Install related express files.\n"
cd express_backend
npm install

echo -e "\n4. Please press after change \"Port Number\" in \"./bin/www\" because of the crash."
echo -e ": Express 3000 port"
echo -e ": React 3000 port"
echo -e "So you have to change express port. ex) express 3000 -> 3001\n"

echo -e "> If you change port number, please enter \"yes\""
read yes
if [ ${yes} == 'y' -o ${yes} == 'yes' ]
then
    echo -e "express.js start"
    npm start
fi

# 5. Proxy setting
#
# /frontend/package.json
#   "scripts": {
#       "start": "craco start",
#       "build": "craco build",
#       "test": "craco test",
#       "eject": "craco eject"
#   },
#   "proxy": "http://localhost:3001", <----

# 6. Check page
# 1)
#   cd express_backend
#   npm start
#   localhost:3000

# 2)
# cd frontend
# npm start
# localhost:3001

# ↓
# https://daveceddia.com/create-react-app-express-backend/
# https://blueshw.github.io/2017/06/20/create-react-app/
# https://blog.cloudboost.io/react-express-the-nodejs-way-of-reacting-and-expressing-7a518e4da3
