# README

Welcome to the world of my Swapi App - where you will be fully emersed in Star Wars lore, legend, and myth! But really, welcome and here are some helpful tips for getting the application going and running the test suite, as well as the tech stack being used.

Things you may want to cover:

* Ruby version
2.5.1

* System dependencies

* Configuration

* Database creation
Developed using Postgres - in particular postgres (PostgreSQL) 10.4 on my local machine.
rake db:create
rake db:



* Database initialization
rake db:create
rake db:migrate
rake db:seed

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
To deploy to heroku using master branch, simply
```bash
heroku git:remote -a star-wars-swapi-app
git push heroku master
```

To deploy a feature branch, create the branch, typically from master then run the command that follows.

```bash
git checkout master
git checkout -b my-feature-branch
git push heroku my-feature-branch:master
```

This will deploy my-feature-branch to herokus master branch so you can try it out. Ideally this would be done in staging but.... yeah that's a little out of scope here.
