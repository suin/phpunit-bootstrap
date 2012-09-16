#!/bin/sh
TEST_DIR="test"
wget -q http://getcomposer.org/composer.phar &&
php composer.phar create-project suin/phpunit-bootstrap $TEST_DIR &&
rm -f composer.phar &&
cd $TEST_DIR &&
rm -rf .git README.md install.sh &&
mv README.dist.md README.md
