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
$ rails s

// create controller
$ rails g controller <controllerName>

// create model
$ rails g model <modelName>

// create migration file
$ rails g migration <migrationName>

// db migration
$ rails db:migrate

// db rollback
$ rails db:rollback

// list routes
$ rails routes

// rubocop
$ rubocop --auto-correct

// reek
$ reek

// generate schema info in model
$ annotate --models

// audit Gemfile.lock
$ bundler-audit
```

## Docker

```zsh
// build images and start container in one line
docker-compose up -d --build

// run db migration in container
docker-compose exec web bundle exec rails db:migrate

// go inside container
docker exec -it <containerId> /bin/bash

// check container logs
docker logs <containerId>

// remove and stop container
docker-compose down
```

open localhost:3000