<?php

// Emulate __DIR__
$__DIR__ = dirname(__FILE__);

// Register PSR-0 compatible class autoloader
spl_autoload_register(create_function('$c', '@include_once strtr($c, "\\\_", "//").".php";'));

// Register PATHs
$path = implode(PATH_SEPARATOR, array(
	$__DIR__.'/Tools/dbunit',
	$__DIR__.'/Tools/php-code-coverage',
	$__DIR__.'/Tools/php-file-iterator',
	$__DIR__.'/Tools/php-invoker',
	$__DIR__.'/Tools/php-text-template',
	$__DIR__.'/Tools/php-timer',
	$__DIR__.'/Tools/php-token-stream',
	$__DIR__.'/Tools/phpunit',
	$__DIR__.'/Tools/phpunit-mock-objects',
	$__DIR__.'/Tools/phpunit-selenium',
	$__DIR__.'/Tools/phpunit-story',
));

set_include_path(get_include_path() . PATH_SEPARATOR . $path);

