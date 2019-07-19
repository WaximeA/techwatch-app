# Setup rails

1. Install all dependencies:
```
$ bundle install
```

2. Create database:
```
$ rails db:create
```

3. Run the migrations:
```
$ rails db:migrate
```

4. Run the server:

```
$ bundle exec bin/rails server 
```

Bonus : easy to use database cleaning : `$ bundle exec rake db:drop db:create db:migrate`


## WARNING:

**Always use `bundle exec` before `rails` commands**

Example:
- `$ bundle exec rails -v`

## Scaffold:

- Create scaffold: `$ bundle exec rails g scaffold Comment name:string message:text`

## Link between entity:

`$ bundle exec rails g migration AddPostToComments post:belongs_to`