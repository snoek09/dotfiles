.PHONY: it
it: tests

.PHONY: code-coverage
code-coverage: vendor
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --coverage-text

.PHONY: coding-standards
coding-standards: vendor
	vendor/bin/php-cs-fixer fix --config=.php_cs --diff --verbose

.PHONY: mutation-tests
mutation-tests: vendor
	vendor/bin/infection --min-covered-msi=80 --min-msi=80

.PHONY: tests
tests: vendor
	vendor/bin/phpunit

vendor: composer.json composer.lock
	composer validate
	composer install
	composer normalize
