#!/usr/bin/env bash

py_apps=(
    "python-language-server"
    "vim-vint"
    "yamllint"
)

js_apps=(
    "babel-eslint"
    "eslint"
    "eslint-plugin-html"
    "eslint-plugin-vue"
    "javascript-typescript-langserver"
    "prettier"
    "pug-lint"
    "stylelint"
    "svgo"
    "vue-language-server"
)

echo -e "\nInstallation of development dependencies"

# Python
echo -e "\nPython:"
for i in "${py_apps[@]}"
do
    echo -e "\t$i"
done

# JavaScript
echo -e "\nJavaScript:"
for i in "${js_apps[@]}"
do
    echo -e "\t$i"
done

echo

read -p "Press any key to install or Ctrl-C to abort..."

# Python
pip install "${py_apps[@]}"

# JavaScript
yarn global add "${js_apps[@]}"

echo "Done."
