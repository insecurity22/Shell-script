#! /bin/bash
# After installing nodejs, please install express.

# -----------------------------------------------
cd ../..
echo -e "\n\n1. Create our express application for the backend.\n"

echo -e "--> Install express.\n"
sudo npm install -g express-generator

echo -e "\n--> Create project\n"
echo "Please enter jade or ejs template : "
read template
if [ ${template} == 'jade' ]
then
    express express-backend
elif [ ${template} == 'ejs' ]
then
    express --ejs express-backend
else
    echo -e "Please enter again"
    exit
fi

echo -e "\n--> Install related express file\n"
cd express-backend
npm install
# -----------------------------------------------

echo -e "2. Please press enter after change \"port number\" in \"./bin/www\" Because of the crash."
echo -e ": Express 3000 port"
echo -e ": React 3000 port"
echo -e "So we have to change express port. ex) 3000 -> 3001\n"
echo -e "If you change port number, Please enter \"yes\""
read yes
if [ ${yes} == 'y' -o ${yes} == 'yes' ]
then
    # -----------------------------------------------
    echo -e "\n3. Install \"create-react-app\" module."
    npm install -g create-react-app

    echo -e "\n--> create react app project"
    create-react-app frontend # create the React app inside the express-backend folder

    # -----------------------------------------------

    # echo -e "express.js project start"
    # npm start
    # echo -e "react.js project start"
    # cd frontend
    # npm start
else
    echo -e "Please enter again"
    exit
fi    

# 2. Proxy setting
#
# /frontend/package.json
#  "scripts": {
#    "start": "craco start",
#    "build": "craco build",
#    "test": "craco test",
#    "eject": "craco eject"
#  },
#  "proxy": "http://localhost:3001", <-----

# 3. Check page
# 1) 
# cd express-backend
# npm start
# localhost:3000 
# 2)
# cd frontend
# npm start
# localhost:3001

# ↓
# https://daveceddia.com/create-react-app-express-backend/
# https://blueshw.github.io/2017/06/20/create-react-app/
# https://blog.cloudboost.io/react-express-the-nodejs-way-of-reacting-and-expressing-7a518e4da3
