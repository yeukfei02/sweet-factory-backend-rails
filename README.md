# sweet-factory-backend-rails

sweet-factory-backend-rails

documentation: <https://documenter.getpostman.com/view/3827865/Tzm2JdWV>

api url: <https://sweet-factory-backend-rails.herokuapp.com/>

## Requirement

- install ruby (v2.6.6)
- install gem
- install bundle
- install yarn
- install node (v12+)

## Testing and run

```zsh
// install ruby dependencies
$ bundle install

// install node dependencies
$ yarn

// run api in local
$ rails server

// create controller
$ rails generate controller <controllerName>

// create model
$ rails generate model <modelName>

// create migration file
$ rails generate migration <migrationName>

// db migration
$ rails db:migrate

// db rollback
$ rails db:rollback

// db migration up
$ rails db:migrate:up

// db migration down
$ rails db:migrate:down

// list routes
$ rails routes

// rubocop
$ rubocop --auto-correct

// reek
$ reek

// audit Gemfile.lock
$ bundler-audit
```