#!/bin/bash

check () {
  echo "🔑 Checking environment variables..."

  if [[ -z "${UIK_PATH}" ]]; then
    echo "the \$UIK_PATH var is not defined to the path of Dashboard UI Kit 3.0"
    exit 1
  else
    echo "the UIKit is defined with $UIK_PATH"
  fi

  if [[ -z "${PROJECT}" ]]; then
    echo "the \$PROJECT is not defined to the project path"
    exit 1
  else
    echo "the project is defined with $PROJECT"
  fi
}

kit () {
  echo "🎨 Installing UIKit..."
  mkdir -p $PROJECT/src/@uik
  cp $UIK_PATH/dist/lib/* $PROJECT/src/@uik
  cp -r $UIK_PATH/repo/src/universal/fonts $PROJECT/src/@uik/
  cp $UIK_PATH/repo/src/universal/_vars.scss $PROJECT/src/@uik/
  cp $UIK_PATH/repo/src/universal/App/font.scss $PROJECT/src/@uik/
  cp $UIK_PATH/repo/src/universal/App/normalize.css $PROJECT/src/@uik/
}

bootstrap () {
  echo "💻 Bootstraping..."
  cd $PROJECT
  yarn add classnames typeface-roboto node-sass --modules-folder $PROJECT/node_modules
  curl -o $PROJECT/src/@uik/index.scss -l https://raw.githubusercontent.com/92bondstreet/uik/master/index.scss
  curl -o $PROJECT/src/App.js -l https://raw.githubusercontent.com/92bondstreet/uik/master/App.js
  curl -o $PROJECT/src/app.module.scss -l https://raw.githubusercontent.com/92bondstreet/uik/master/app.module.scss
  curl -o $PROJECT/jsconfig.json -l https://raw.githubusercontent.com/92bondstreet/uik/master/jsconfig.json
}

todo () {
  echo "🚀 Todo list"
  echo "Update '.gitignore' file by ignoring 'src/@uik'"
}

check
kit
bootstrap
todo
