# PHPUnit Bootstrap

A distribution for quick start unit testing on PHP.

## Installation

Install automatically:

```
curl http://suin.org/phpunit-bootstrap.sh | sh
```

Install manually:

```
composer.phar create-project suin/phpunit-bootstrap tests

cd tests

# Remove unnecessary files
rm -rf .git README.md

# Make README for test directory
mv README.dist.md README.md
```

