# Wattos Spaceship Emporium

This is a rails 4 app created to solve a front end coding challenge. It consists of a products index page and product detail page using the Bootstrap HTML framework.

## Instructions

After Anakin Skywalker left Watto high and dry after winning the pod racing championships and going off to train as a jedi with Liam Neeson, he needed a new way to make credits. He is starting a used spaceship dealership, and obviously will need a sleek new web application to spread the word across the galaxy.

The website will consist of a homepage with separate detail views for each of the vehicles being sold on the site. Fortunately, Watto has his entire inventory in JSON format, making it easy for you to display in a fancy new web application. Watto is counting on you. You are his only hope.

## Solution

The website was developed on Rails 5 and hosted on Heroku. The frontend is based on Twitter Bootstrap with a theme from Bootswatch. The website uses the PostgreSQL database to store the products and images metadata. Images are stored on Amazon S3. Thumbnails are converted from the uploaded images using Imagemagick.

I attempted to match the mockup provided in the challenge instructions as closely as possible while making the design visually appealing and searching for and adding related images for the spaceships. I used a carousel to add interactivity to the product detail page.

## Prerequisites

 - Ruby 2.2.2 or higher
 - PostgreSQL 9 or higher
 - An internet connection to import spaceship data

## Setup

Clone the repo:

```
git clone https://github.com/DiegoSalazar/watto_spaceship_emporium.git
cd watto_spaceship_emporium
```

Run the setup script:

```
./bin/setup
```

The app should now be available at `http://localhost:3000`
