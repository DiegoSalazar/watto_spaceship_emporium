# Wattos Spaceship Emporium

This is a rails 4 app created to solve a front end coding challenge. It consists of a products index and show page using the Bootstrap HTML framework.

## Setup

Clone the repo

```
git clone https://github.com/DiegoSalazar/watto_spaceship_emporium.git
cd watto_spaceship_emporium
```

Install dependencies

```
bundle
```

Create the database

```
rake db:create db:migrate
```

Import spaceship data

```
rake import:products[http://demo7475333.mockable.io/spaceships]
```

Run web server

```
rails s
```

The app should now be available at `http://localhost:3000`
