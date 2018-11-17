## MortgageHippo Code Challenge - Coin Machine API

## Instructions
Deployed at coinapimh.herokuapp.com/api/v1

## About
In the deployed app I was able to finish all of the steps besides sending alerts. If you clone my repo from github to your local machine and run the api, sending emails to all admins when coins have a value of less than 4 works. I just didn't have time to configure an addon for heroku to be able to use the same functionality.

## Usage
1. To create a user use a sevice such as Postman. Use http://coinapimh.herokuapp.com/api/v1/users/create with a post request and use an object like the example below:
{ 
	"user": {
		"username": "Nolan",
		"email": "nhughes987@gmail.com",
		"password": "password",
		"role": "admin"
	} 
}
2. To retreive your api token, make a post request to http://coinapimh.herokuapp.com/api/v1/user_token and use an object like the example below:
{ 
	"auth": {
		"email": "nhughes987@gmail.com",
		"password": "password"
	} 
}
3. For the rest of the requirements, they are pretty straight forward and RESTful and just require you to have your api key from user_token.