#! /bin/bash
# Install express

echo -e "\n\nInstall express\n\n"
sudo npm install -g express-generator

echo -e "*** Create project\n"
echo -e "Please enter project name : "
read projectname
echo -e "Please select jade or ejs template : "
read template
if [ ${template} == 'jade']
then
    express ${projectname}
elif [ ${template} == 'ejs']
then
    express --ejs ${projectname}
fi

echo -e "Install related express file"
cd ${projectname}
npm install

echo -e "express.js project start"
npm start

# Check page
# localhost:3000
