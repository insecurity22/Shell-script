#! /bin/bash
# After installing nodejs, please install express.

# -----------------------------------------------
echo -e "\n\n1. Create our express application for the backend.\n"

echo -e "--> Install express.\n"
sudo npm install -g express-generator

echo -e "--> Create project\n"
echo -e "Please select jade or ejs template : "
read template
if [ ${template} == 'jade']
then
    express react-backend
elif [ ${template} == 'ejs']
then
    express --ejs react-backend
fi

echo -e "--> Install related express file\n"
cd react-backend
npm install
# -----------------------------------------------

echo -e "2. Please press enter after change \"port number\" in \"./bin/www\"\n"
echo -e "  Because of the crash.\n"
echo -e ": express 3000 port\n"
echo -e ": create-react-app 3000 port\n"
echo -e "So we have to change express port. ex) 3000 -> 3001\n"

# -----------------------------------------------
echo -e "3. Install \"create-react-app\" module."
npm install -g create-react-app

echo -e "--> create react app\n"
create-react-app frontend # create the React app inside the react-backend folder

# -----------------------------------------------

echo -e "express.js project start"
npm start

# Check page
# localhost:3000

# 
# https://blueshw.github.io/2017/06/20/create-react-app/
#
# https://daveceddia.com/create-react-app-express-backend/
# https://blog.cloudboost.io/react-express-the-nodejs-way-of-reacting-and-expressing-7a518e4da3
