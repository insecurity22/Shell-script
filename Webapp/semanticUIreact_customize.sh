#! /bin/bash

# -------> https://react.semantic-ui.com/theming/

# You have to start inside frontend folder
echo -e "Remove existing styles"
npm uninstall semantic-ui semantic-ui-css

echo -e "Install required dependencies"
npm install @craco/craco @semantic-ui-react/craco-less semantic-ui-less --save-dev

echo -e "1. Please update \"package.json\" file"
echo -e "{"
echo -e "     \"scripts\": {"
echo -e "        \"start\": \"craco start\,"
echo -e "        \"build\": \"craco build\,"
echo -e "        \"test\": \"craco test\","
echo -e "        \"eject\": \"craco eject\""
echo -e "      }"
echo -e "}"

echo -e "\n2. Create craco.config.js"
echo -e " module.exports = {"
echo -e "  plugins: [{ plugin: require('@semantic-ui-react/craco-less') }],"
echo -e " }\n"

echo -e "If you change package.json, and create craco.config.js, Please enter \"yes\""
read yes
if [ ${yes} == 'y' -o ${yes} == 'yes' ]
then
    npm install semantic-ui-react --save-dev
    npx @semantic-ui-react/bootstrap
    echo -e "Created \"./src/semantic-ui\" folder"
else
    echo -e "Please enter again"
    exit
fi

echo -e "You also should update \"./src/semantic-ui/theme.config\""
echo -e "/*******************************"
echo -e "            Folders"
echo -e "*******************************/\n"

echo -e "@themesFolder : 'themes';"
echo -e "@siteFolder  : '../../src/semantic-ui/site';"

echo -e "@import (multiple) "~semantic-ui-less/theme.less";"
echo -e "@fontPath : '../../../themes/@{theme}/assets/fonts';"


# ----> Path
# https://github.com/Semantic-Org/example-github/tree/master/semantic/src/themes/github
# backend/frontend/src/semantic-ui/site/...

