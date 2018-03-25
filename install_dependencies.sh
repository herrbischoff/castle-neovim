#!/usr/bin/env bash

py_pkg=(
    "neovim"
    "python-language-server"
    "vim-vint"
    "yamllint"
)

js_pkg=(
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
for i in "${py_pkg[@]}"
do
    echo -e "\t$i"
done

# JavaScript
echo -e "\nJavaScript:"
for i in "${js_pkg[@]}"
do
    echo -e "\t$i"
done

echo

read -p "Press any key to install or Ctrl-C to abort..."

# Python
pip install "${py_pkg[@]}"

# JavaScript
yarn global add "${js_pkg[@]}"

echo "Done."
