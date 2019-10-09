#! /bin/bash

# -------> https://react.semantic-ui.com/theming/

echo -e "Remove existing styles"
npm uninstall semantic-ui semantic-ui-css

echo -e "Install required dependencies"
npm install @craco/craco @semantic-ui-react/craco-less semantic-ui-less --save-dev

read yes
if [ ${yes} == 'y' -o ${yes} == 'yes' ]
then
    echo -e "1. Please update package.json file"
    echo -e "package.json"
    echo -e " {"
    echo -e "     \"scripts\": {"
    echo -e "        \"start\": \"craco start\",
    echo -e "        \"build\": \"craco build\",
    echo -e "        \"test\": \"craco test\",
    echo -e "        \"eject\": \"craco eject\"
    echo -e "      }
    echo -e " }"

    echo -e "\n2. Create craco.config.js"
    echo -e " module.exports = {"
    echo -e "  plugins: [{ plugin: require('@semantic-ui-react/craco-less') }],"
    echo -e " }\n"
else
    echo -e "Please enter again"
    exit
fi

npx @semantic-ui-react/bootstrap

# ----> Path
# https://github.com/Semantic-Org/example-github/tree/master/semantic/src/themes/github
# backend/frontend/src/semantic-ui/site/...

