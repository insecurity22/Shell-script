#! /bin/bash
# After installing nodejs, please install express.

# -----------------------------------------------
echo -e "\n\n1. Create our express application for the backend.\n"

echo -e "--> Install express.\n"
sudo npm install -g express-generator

echo -e "\n--> Create project\n"
echo "Please enter jade or ejs template : "
read template
if [ ${template} == 'jade' ]
then
    express react-backend
elif [ ${template} == 'ejs' ]
then
    express --ejs react-backend
else
    echo -e "Please enter again"
    exit
fi

echo -e "\n--> Install related express file\n"
cd react-backend
npm install
# -----------------------------------------------

echo -e "2. Please press enter after change \"port number\" in \"./bin/www\""
echo -e "  Because of the crash."
echo -e ": express 3000 port"
echo -e ": create-react-app 3000 port"
echo -e "So we have to change express port. ex) 3000 -> 3001\n"
echo -e "If you change port number, Please enter \"yes\""
read yes
if [ ${yes} == 'y' || ${yes} == 'yes' ]
then
    # -----------------------------------------------
    echo -e "3. Install \"create-react-app\" module."
    npm install -g create-react-app

    echo -e "\n--> create react app\n"
    create-react-app frontend # create the React app inside the react-backend folder

    # -----------------------------------------------

    echo -e "express.js project start"
    npm start
else
    echo -e "Please enter again"
    exit
fi    

# Check page
# localhost:3000

# 
# https://blueshw.github.io/2017/06/20/create-react-app/
#
# https://daveceddia.com/create-react-app-express-backend/
# https://blog.cloudboost.io/react-express-the-nodejs-way-of-reacting-and-expressing-7a518e4da3
