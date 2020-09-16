#! /bin/bash
# After installing nodejs, please install react.

cd ../..

echo -e "\n\n1. Install create-react-app."
npm install -g create-react-app

echo -e "\n\n2. Create react app project."
create-react-app react_frontend

# React.js start
./frontend
npm start
