#!/usr/bin/env bash

SCRIPT_NAME=$(php -r "echo realpath('$0');")
CURRENT_DIR=$(dirname $SCRIPT_NAME)
TOOLS_DIR=$CURRENT_DIR/Tools
HR="----------------------------------------------------------------------"

if [ ! -d $TOOLS_DIR ]
then
	echo "No such directory: $TOOLS_DIR" >&2
	exit 1
fi

# Fetch PHPUnit tools
cd $TOOLS_DIR
git clone git://github.com/sebastianbergmann/phpunit.git
git clone git://github.com/sebastianbergmann/dbunit.git
git clone git://github.com/sebastianbergmann/php-file-iterator.git
git clone git://github.com/sebastianbergmann/php-text-template.git
git clone git://github.com/sebastianbergmann/php-code-coverage.git
git clone git://github.com/sebastianbergmann/php-token-stream.git
git clone git://github.com/sebastianbergmann/php-timer.git
git clone git://github.com/sebastianbergmann/phpunit-mock-objects.git
git clone git://github.com/sebastianbergmann/phpunit-selenium.git
git clone git://github.com/sebastianbergmann/phpunit-story.git
git clone git://github.com/sebastianbergmann/php-invoker.git

# Finish
echo $HR
echo "YAML component that is provided by the Symfony project is required:"
echo ""
echo "    pear install pear.symfony-project.com/YAML"
