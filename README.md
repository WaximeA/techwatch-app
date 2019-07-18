# techwatch-api 

Ruby On Rails project that provide an API for technical watch.

## Setup:
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

## Routes:

### User:

[Doc api-guard](https://github.com/Gokul595/api_guard)

- Sing up `POST http://127.0.0.1:3000/users/sign_up` with body
```
{
    "email": "user@apiguard.com",
    "password": "api_password",
    "password_confirmation": "api_password"
}
```
- Sign in `POST http://127.0.0.1:3000/users/sign_in` with body
```
{
  "email": "user@apiguard.com",
  "password": "api_password"
}
```

All api-guard routes :
```
# $ bundle exec rails routes

user_sign_up POST   /users/sign_up(.:format) api_guard/registration#create
user_delete DELETE /users/delete(.:format) api_guard/registration#destroy
user_sign_in POST   /users/sign_in(.:format) api_guard/authentication#create
user_sign_out DELETE /users/sign_out(.:format) api_guard/authentication#destroy
user_passwords PATCH  /users/passwords(.:format) api_guard/passwords#update
```

#### Example response body:
```
{
    "status": "success",
    "message": "Signed up successfully"
}
```
#### Example response headers:
```
Access-Token: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NDY3MDgwMjAsImlhdCI6MTU0NjcwNjIyMH0.F_JM7fUcKEAq9ZxXMxNb3Os-WeY-tuRYQnKXr_bWo5E
Refresh-Token: Iy9s0S4Lf7Xh9MbFFBdxkw
Expire-At: 1546708020
```

### Header:

You have to had this header : 
```
[
    {
        "key":"Content-Type",
        "name":"Content-Type",
        "value":"application/json",
        "description":"",
        "type":"text"
    },
    {
        "key":"Authorization",
        "value":"Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1NjMzNjY3MTQsImlhdCI6MTU2MzI4MDMxNH0.9jF__PQHemje3SDeJiiEDjEh0b_8lgZkIcFnDpXU3wU",
        "description":"",
        "type":"text",
        "enabled":true
    }
]
```

### Categories:
- Create Category: `POST http://127.0.0.1:3000/categories?name=First category&description=First category desc` or with body 
```
{
	"name": "First category",
	"description": "First category description blabla"
}
```
- Get Category: `GET http://127.0.0.1:3000/categories`
- Get Category Posts: `GET http://localhost:3000/categories/1/posts`


### Posts:
- Create Post: `POST http://127.0.0.1:3000/posts?title=First post title3&content=First post content3&link=http://www.google.com&category_id=1` or with body
```
{
	"title": "First post",
	"content": "First post content blabla",
	"link": "http://www.google.com",
	"category_id": 1
}
```
- Get Posts: `GET http://127.0.0.1:3000/posts`
- Get Post Comments: `GET http://localhost:3000/posts/1/comments`

### Comments:
- Create Comment: `POST http://127.0.0.1:3000/comments?name=First comment name4&message=First comment message4&post_id=1` or with body
```
{
	"name": "First comment",
	"message": "First comment message",
	"post_id": 1
}
```
- Get Comments: `GET http://127.0.0.1:3000/comments`