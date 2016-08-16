# Two Factor Authentication with Nexmo Verify

A Rails (Ruby) app showing how to implement two-factor authentication using the Nexmo Verify API.

## Prerequisites

* [A Nexmo account](https://dashboard.nexmo.com/sign-up)
* [Ruby 2.1+](https://www.ruby-lang.org/) and [Bundler](http://bundler.io/) installed
* [Rails 5+](http://rubyonrails.org/) installed

## Getting started

```sh
# clone this repository
git clone git@github.com:Nexmo/ruby-2fa.git
# change to folder
cd ruby-2fa
# install dependencies
bundle install
# create a .env
cp .env.example .env
```

Next you will need to sign up for a Nexmo account and get your API credentials from the API dashboard and put them in your `.env`
file.

Finally all that's left is to start the server.

```sh
rails server
```

## Usage

This app shows you how to secure your app login with two-factor authentication using [Rails](http://rubyonrails.org/), Ruby and [Nexmo Verify](https://www.nexmo.com/products/verify/).

Once your server is started:

* Visit [localhost:3000](http://localhost:3000/)
* Register for an account
* Add a phone number to your account without any leading 0's or +'s (e.g. `445555666777`)
* Log out
* Log in with your username and password
* You will receive a code in a few seconds, fill this in on the second form and submit
* You will now be logged in

## License

This project is licensed under the [MIT license](LICENSE).
