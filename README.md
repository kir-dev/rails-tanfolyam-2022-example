# BookHub

Example project for Kir-Dev's 2022 Ruby on Rails course.

## Tech stack
 * ruby 3.0.3
 * rails 7.0.2.3
 * sqlite3
 
## Deployment instructions
This project isn't meant to be deployed, but only as an example project.

### How to run

First you need to install gems
```bash
bundle install
```

You can create db with

```bash
rails db:create
```
And create test data with:
```bash
rails db:seed
```

Then you can run project with
```bash
rails s
```

### Useful commands

`rails db:reset` -> drops db, and seeds it again
