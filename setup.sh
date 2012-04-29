#!/usr/bin/env bash

SCRIPT_NAME=$(php -r "echo realpath('$0');")
CURRENT_DIR=$(dirname $SCRIPT_NAME)
TOOLS_DIR=$CURRENT_DIR/Vendor
HR="----------------------------------------------------------------------"

if [ ! -d $TOOLS_DIR ]
then
	echo "No such directory: $TOOLS_DIR" >&2
	exit 1
fi

# Fetch PHPUnit tools
cd $TOOLS_DIR
mkdir -p ./pyrus/bin
php pyrus.phar ./pyrus set bin_dir ./pyrus/bin
php pyrus.phar ./pyrus set auto_discover on
php pyrus.phar ./pyrus channel-discover pear.phpunit.de
php pyrus.phar ./pyrus install phpunit/PHPUnit