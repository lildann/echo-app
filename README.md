## The Echo App spec
An app that repeats what you say until you exit it!

### Requirements
* The app runs on the command line.

* It's fine to use Ruby or JavaScript.

* When the app runs you are prompted with a phrase to say something

* The output also has information about the date and time formatted as below.

* The app continues to prompt you to say something until you type ```exit```

* when you type ```exit``` the app outputs 'Goodbye!' and then ends.

Example interaction:
```
$ ruby echo.rb
Say something:
hello, world
2018-01-09 | 16:26 | You said: 'hello, world'!
Say something:
exit
Goodbye!
```

INPUT | OUTPUT
------|-------
hello, world | ```2018-01-09 \| 16:26 \| You said: 'hello, world'!" ```
exit | `Goodbye!`

* TimeCop to freeze time
* Classicist approach vs Mockist testing


Getting Started
-----

Clone this repository
```
$ git clone https://github.com/lildann/echo-app.git
$ cd echo-app
```

Install Bundler
```
$ gem install bundler
```

Install all program dependencies
```
$ bundle install
```

Run app
```
$ ruby ./lib/echo.rb  
```

Run app with tests
```
$ rspec 
```

