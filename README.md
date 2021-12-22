# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Endpoint	Functionality
* POST api/v1/users	Signup sample ==> params: {username: "admin", email: "admin@admin.com", password: "123456", password_confirmation: "123456",}
* 
* POST api/v1/login	Login sample==> params: {email: admin@admin.com, password: admin}
* 
* GET api/v1/articles	List all article without auth
* POST api/v1/articles	Create a new articles without auth
* GET api/v1/articles/:id	Get a article without auth
* PUT api/v1/articles/:id	Update a artcilce without auth
* DELETE api/v1/articles/:id	Delete a article
* 
* GET api/v1/postings	List all postings with auth
* POST api/v1/postings	Create a new postings with auth
* GET api/v1/postings/:id	Get a postings with auth
* PUT api/v1/postings/:id	Update a postings with auth
* DELETE api/v1/postings/:id	Delete a postings 

