# UIK

> Bootstrap Dashboard UI Kit 3.0 for my needs

## 🕹️ Usage

```sh
# cd /path/to/workspace/project
❯ uik
```

## 👩‍💻 Just tell me what to do

* Update `.gitignore` file

```
# UIKit
src/@uik
```

* Update `.env` file

```
NODE_PATH=src
```

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
```



## 🌱 Inspiration - deep dive reading

* [Dashboard UI Kit 3.0](https://janlosert.com/store/dashboard-ui-kit-3.html)
