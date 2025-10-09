# Makefile for Laravel project automation

.PHONY: install-essentials install-ide-helper pint rector ide-helper install-debug-bar debug-bar setup-essentials setup-project

# Install the nunomaduro/essentials package
install-essentials:
	composer require nunomaduro/essentials --no-interaction

# Run Pint (PHP CS Fixer) via Essentials - this publishes pint.json config
pint:
	php artisan essentials:pint --no-interaction

# Run Rector (PHP refactoring) via Essentials - this publishes rector.php config
rector:
	php artisan essentials:rector --no-interaction

# Install barryvdh/laravel-ide-helper as a dev dependency
install-ide-helper:
	composer require --dev barryvdh/laravel-ide-helper --no-interaction

# Run ide-helper generation
ide-helper:
	php artisan ide-helper:generate --no-interaction

# Install barryvdh/laravel-debugbar as a dev dependency
install-debug-bar:
	composer require --dev barryvdh/laravel-debugbar --no-interaction

# Publish debug bar configuration
debug-bar:
	php artisan vendor:publish --provider="Barryvdh\Debugbar\ServiceProvider" --no-interaction

# Combined target: Install package and run both Pint and Rector
setup-essentials: install-essentials pint rector

# Single command for initial project setup (installs packages, publishes configs, and generates IDE helper)
setup-project: install-essentials install-ide-helper install-debug-bar pint rector ide-helper debug-bar

# Run Pint and Rector directly
.PHONY: format
format:
	php vendor/bin/pint -p
	php vendor/bin/rector
