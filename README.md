# techwatch-api 

Ruby On Rails project that provide an API for technical watch.

## Routes :

### Posts
- Create Post : `http://127.0.0.1:3000/posts?title=First post title3&content=First post content3&link=http://www.google.com&category_id=1`
- Get Posts : `http://127.0.0.1:3000/posts`
- Get Post Comments : `http://localhost:3000/posts/1/comments`

### Categories
- Create Category : `http://127.0.0.1:3000/categories?name=First category&description=First category desc`
- Get Category : `http://127.0.0.1:3000/categories`
- Get Category Posts : `http://localhost:3000/categories/1/posts`

### Comments
- Create Comment : `http://127.0.0.1:3000/comments?name=First comment name4&message=First comment message4&post_id=1`
- Get Comments : `http://127.0.0.1:3000/comments`