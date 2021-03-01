#!/bin/bash

#projName='alg-converter'
projName=$1

# make the MVC parent directories and sub directories
echo 'Creating directories based on project name: ' $projName
mkdir -p $projName/{models,views,controllers,public/{css,images,js}}

# head into the folder
echo 'Changing directory into: ' $projName
cd $projName

# create typical files for MVC

# list of files
files=(\
      'main.js'
      'controllers/homeController.js'
      'controllers/errorController.js'
      'views/layout.ejs'
      'views/index.ejs'
      'public/css/'$projName'.css'
      )

# create the files
echo 'Creating files in file list'
for file in ${files[@]}; do
  touch $file
  echo 'created' $file
done

echo 'DONE!'
echo 'you''ll have to manually go into the' $projName 'folder though...'
