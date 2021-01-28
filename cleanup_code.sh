#!/bin/bash

# Replace for unix user id the add user id to running php process
# i.e. adduser www-data ${USER}

USER="1000"
GROUP="1000"

chown -R ${USER}.${GROUP} . 2>/dev/null
find config -exec chown ${USER}.${USER} {} \; 2>/dev/null

find . -type d -exec chmod 775 {} \;
find . -type d -exec chmod g+s {} \;
find . -type f -exec chmod 664 {} \;

mkdir -p ./tpl_c

chmod +x ${0}

# convert to unix:
find . \( -path ./lib/external -o -path ./tpl_c \) -prune -false -o -type f -name "*.php" -exec dos2unix {} \;

# convert to 4 spaces:
find . \( -path ./lib/external -o -path ./tpl_c \) -prune -false -o -type f -name "*.php" -exec sed -i 's/\t/    /g' {} \;

# remove trailing whitespaces:
find . \( -path ./lib/external -o -path ./tpl_c \) -prune -false -o -type f -name "*.php" -exec sed -i -r 's/\s*$//g' {} \;

# add new line at end of file
find . \( -path ./lib/external -o -path ./tpl_c \) -prune -false -o -type f -name "*.php" -exec sed -i -e '$a\' {} \;

# Do the same for:

#.css
find Web/css -type f -name "*.css" -exec dos2unix {} \;
find Web/css -type f -name "*.css" -exec sed -i 's/\t/    /g' {} \;
find Web/css -type f -name "*.css" -exec sed -i -r 's/\s*$//g' {} \;
find Web/css -type f -name "*.css" -exec sed -i -e '$a\' {} \;

find Web/css -type f -name "*.less" -exec dos2unix {} \;
find Web/css -type f -name "*.less" -exec sed -i 's/\t/    /g' {} \;
find Web/css -type f -name "*.less" -exec sed -i -r 's/\s*$//g' {} \;
find Web/css -type f -name "*.less" -exec sed -i -e '$a\' {} \;

# tpl
find tpl lang -type f -name "*.tpl" -exec dos2unix {} \;
find tpl lang -type f -name "*.tpl" -exec sed -i 's/\t/    /g' {} \;
find tpl lang -type f -name "*.tpl" -exec sed -i -r 's/\s*$//g' {} \;
find tpl lang -type f -name "*.tpl" -exec sed -i -e '$a\' {} \;

# sql
find database_schema -type f -name "*.sql" -exec dos2unix {} \;
find database_schema -type f -name "*.sql" -exec sed -i 's/\t/    /g' {} \;
find database_schema -type f -name "*.sql" -exec sed -i -r 's/\s*$//g' {} \;
find database_schema -type f -name "*.sql" -exec sed -i -e '$a\' {} \;

# js
find Web/scripts Web/scripts/admin Web/scripts/reports -maxdepth 1 -name "*.js" -exec dos2unix {} \;
find Web/scripts Web/scripts/admin Web/scripts/reports -maxdepth 1 -name "*.js" -exec sed -i 's/\t/    /g' {} \;
find Web/scripts Web/scripts/admin Web/scripts/reports -maxdepth 1 -name "*.js" -exec sed -i -r 's/\s*$//g' {} \;
find Web/scripts Web/scripts/admin Web/scripts/reports -maxdepth 1 -name "*.js" -exec sed -i -e '$a\' {} \;

# plugins
find plugins -type f \( -name "*.html" -o -name "*.css" -o -name "*.txt" \) -exec dos2unix {} \;
find plugins -type f \( -name "*.html" -o -name "*.css" -o -name "*.txt" \) -exec sed -i 's/\t/    /g' {} \;
find plugins -type f \( -name "*.html" -o -name "*.css" -o -name "*.txt" \) -exec sed -i -r 's/\s*$//g' {} \;
find plugins -type f \( -name "*.html" -o -name "*.css" -o -name "*.txt" \) -exec sed -i -e '$a\' {} \;

# whole directories and files
find config -type f -exec dos2unix {} \;
find config -type f -exec sed -i 's/\t/    /g' {} \;
find config -type f -exec sed -i -r 's/\s*$//g' {} \;
find config -type f -exec sed -i -e '$a\' {} \;

# orphan files
FILES="./readme.html .gitignore ./Web/Services/.htaccess ./pdt_templates.xml ./phpunit.xml ./License ./_excludes.txt ./composer.json ./build.xml ./development-guide.txt ./.htaccess ./Web/uploads/index.html ./Web/uploads/tos/index.html ./uploads/.htaccess ./uploads/index.html ./readme_installation.html"
find ${FILES} -exec dos2unix {} \;
find ${FILES} -exec sed -i 's/\t/    /g' {} \;
find ${FILES} -exec sed -i -r 's/\s*$//g' {} \;
find ${FILES} -exec sed -i -e '$a\' {} \;
