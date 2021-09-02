# README

# Art Market API
This is the Rails API for an art marketplace app. This API provides the back-end structure for the app including the postgres database, and access to the data through different routes and controller actions. It also provides the appropriate asscociations within each model. Includes Active Storage configuration for image file uploads.  

## Installing / Getting started

You'll need to run a few commands in your terminal to get this up and running
```shell
git clone https://github.com/daverafe/art_market_api.git
cd art_market_api
bundle install
rails db:migrate 
rails s 
```
You will need to follow these steps in order to run the server for this app. However this only gives you access to the data itself, you will also need to install the art-market-frontend at https://github.com/daverafe/art-market-frontend in order to use the app. 

## Developing

This project was built with ruby on rails. 

```shell
git clone https://github.com/daverafe/art_market_api.git
cd art_market_api
bundle install
rails db:migrate
code .
```

This is going to give you access to the repository, install any dependencies you need, run migrations to set up the database, and open the project in your VS code. 
Again front end is in seperate respository at https://github.com/daverafe/art-market-frontend.


## Features

In this project users can browse various pieces of art independent sellers have posted to sell. Users can browse and add to cart without and signup or login required. If a user is interested in selling their own art they can sign up, create an account, and post the art they would like to sell. 

## Contributing

If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome.

## Links

- Repository: https://github.com/daverafe/art_market_api
