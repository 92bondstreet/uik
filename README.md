# UIK

> Bootstrap Dashboard UI Kit 3.0 for my needs

## 🏗️ Installation

```sh
sudo curl -o /usr/local/bin/uik -z /usr/local/bin/uik -l https://raw.githubusercontent.com/92bondstreet/uik/master/uik.sh
sudo chmod a+x /usr/local/bin/uik
```

## 🕹️ Usage

```sh
# cd /path/to/workspace/project
❯ uik
```

## 👩‍💻 Just tell me what to do

* Create `@uik` dist files to destination directory

```sh
❯ UIK_PATH=/path/to/uik/path
❯ PROJECT=/path/to/project
❯ mkdir -p $PROJECT/src/@uik
❯ cp $UIK_PATH/dist/lib/* $PROJECT/src/@uik
❯ cp -r $UIK_PATH/src/universal/fonts $PROJECT/src/@uik/
❯ cp $UIK_PATH/src/universal/_vars.scss $PROJECT/src/@uik/
❯ cp $UIK_PATH/src/universal/App/font.scss $PROJECT/src/@uik/
❯ cp $UIK_PATH/src/universal/App/normalize.css $PROJECT/src/@uik/
```

* Install required node modules

```sh
❯ yarn add classnames
❯ yarn add typeface-roboto
❯ yarn add node-sass
```

* Copy the starter template

```sh
❯ cp index.scss $PROJECT/src/@uik/
❯ cp App.js $PROJECT/src
❯ cp app.module.scss $PROJECT/src
❯ cp jsonconfig.json $PROJECT
```

* Update `.gitignore` file

```
# UIKit
src/@uik
```

## 🌱 Inspiration - deep dive reading

* [Dashboard UI Kit 3.0](https://janlosert.com/store/dashboard-ui-kit-3.html)
