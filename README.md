# README

Welcome to the world of my Swapi App - where you will be fully emersed in Star Wars lore, legend, and myth! But really, welcome and here are some helpful tips for getting the application going and running the test suite, as well as the tech stack being used.

Things you may want to cover:

* Rails Version
  5.2.0 (Latest as of date this application was created)
    * bin/rails credentials:edit
    * export EDITOR = 'vim' - add in either ~/.zshrc, ~/.bash_profile, etc.
    * * This EDITOR env variable is so bin/rails credentials:edit knows what editor to use
    * * other options than vim: export EDITOR='subl -n -w' | export EDITOR='mvim'
    * * there are plenty more. Do a search and find the one you prefer.

* Ruby version
  2.5.1 (Latest as of date this application was created)

* System dependencies
  * brew install postgresql (There are multiple ways to install - some gui - per OS. homebrew is one macOS option.)

  Postgres Database User with Role - this app was developed using Postgres  (PostgreSQL) 10.4 on my OSX 10.13.5.
    * create user . Since app was ran with the flag --database=postgresql telling rails
    * * to generate the files with the PostgreSQL database rathat than the default
    * * SQLite3. in `config/database.yml` there will be a part that looks like `username: swapi-app`. This is the Postgres role that needs to be created if it doesn't exist.
    ```createuser -s swapi-app``` command will do it. For Development and Testing with a non critical application I leave no password, so when I ran the command bin/rails credentials:edit it looked like this: SWAPI-APP_DATABASE_PASSWORD: ''.
    *OUTPUT: > New credentials encrypted and saved.*
    * * Create databases with bin/rails db:create:all

    To Summarize - after postgres installed and you are ready to start using a database
    * Find username in config/database.yml
    * ```createuser -s username```
    * ```bin/rails credentials:edit``` add ```SWAPI-APP_DATABASE_PASSWORD: ''``` or replace '' with the password you chose for that role.
    * ```bin/rails db:create:all```

* Configuration


* Database creation
psql command and createuser command to setup user

bin/rails db:create:all
bin/rails db:migrate
bin/rails db:seed

Plans for seed file.
(I plan to have a Service model which uses the ExternalApi controller to gather the data - the use the service to parse, store in DB, and cache the results. Then, any that aren't gathered during ```bin/rails db:seed```) Will use probably jQuery since that will be the fastest to implement and test rather than a full blown JavaScript Front End Framework.

* How to run the test suite
TODO: Describe when setup.

* Services (job queues, cache servers, search engines, etc.)
Decide if I want to use caching servers as I ahven't really had the opportunity and this could be a fun time to try it.

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

# Developing or contributing
I know no one is going to do this but for the sake of just in case or someting like that i'm adding all this.

## Fork the repo or download the .zip file
To get the repo, simply download the zip, fork it, or git clone it. It's pretty sweet I recommend both starring it AND forking it AND adding to it!

### Testing

### Debugging
I use pry - I am now going to test pry-debugger as I haven't had the time before.

#### Pry-doc
In Order to pry-doc into your gems, I run ```yard config --gem-install-yri``` so as described below YARD automagically adds new gems docs and files at your fingertips.


#### Yard and Pry
https://www.rubydoc.info/github/pry/pry/ - yard documentation and pry
As of YARD v0.9.2:

RubyGems "--document=yri,yard" hooks are now supported. You can auto-configure
YARD to automatically build the yri index for installed gems by typing:

    $ yard config --gem-install-yri

See `yard config --help` for more information on RubyGems install hooks.

#### .pryrc
##### I need to update my pryrc it's out of date.
https://github.com/ruevaughn/dotfiles/blob/master/.pryrc
```Mac - place in ~/.pryrc```

#### .irbrc
https://github.com/ruevaughn/dotfiles/blob/master/.irbrc
```Mac - place in ~/.irbrc``` - so far just adds one method to show you the methods of an object sorted without the big pappa parent class Object Methods.
```
