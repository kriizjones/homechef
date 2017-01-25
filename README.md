# Homechef
Midcourse project for the Nov -16 cohort from Craft Academy Bootcamp. A project that will develop into a website where users can buy homecooked food from amateur homechefs.

### Build
[![Build Status](https://travis-ci.org/CraftAcademy/homechef.svg?branch=develop)](https://travis-ci.org/CraftAcademy/homechef)
### Coverage
[![Coverage Status](https://coveralls.io/repos/github/CraftAcademy/homechef/badge.svg?branch=develop)](https://coveralls.io/github/CraftAcademy/homechef?branch=develop)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

To be able to install and run the application you will need to install Rails 5 and PostgreSQL.

### Installing

A step by step series of examples that tell you have to get a development env running

Fork and clone repo, then:

```
$ bundle install
```

And then

```
$ rake db:migrate db:seed
```

## Running the tests

To run tests

```
$ rake
```

## Deployment

We are using Travis for continous integration and Heroku for deployment

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds
* [Travis](https://travis-ci.org) - Used for continous integration
* [Coveralls](https://coveralls.io) - To track code coverage
* [Heroku](http://heroku.com/) - For deployment

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* https://github.com/crowdint/acts_as_shopping_cart
