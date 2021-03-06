# Group Productivity App

![screenshot](./images/screenshot.png) 

> Group Productivity is a mobile-only app built with ruby on rails where you can sign up (and/or sign in) using only your name, create groups, and add activities. View created groups, created by all users, and view your own groups and activities. Keep track of the mins you spent on your activities, stay motivated by comparing to others in the group, make it a fun competition. This Ruby on Rails capstone project is based on an app for grouping activities by a goal with your family/friends.
> 
## Basic Features and Usage:
-  Home screen
-  Basic login: You can log into the app or signup with just a user name. *(Icon automatically assigned)*
-  Profile view with links to groups and created activities.
-  View all your grouped activities.
-  View all your ungrouped activities.
-  View all the groups made in the app.
-  View details for each activity. *(Can access them from grouped and ungrouped activity views as well as from the group info view)*
-  Make a new activity, with ot without belonging to a group.
-  View details for each group, which include the activities owned by that group. *(Can access from the all groups view)*
-  Make a new group.

## Built With

- Ruby v2.7.2
- Ruby on Rails v5.2.4

## Live Demo

[Live Site](https://radiant-chamber-42308.herokuapp.com/)


## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/Stephanie041996/Activity_App.git
$ cd GROUP-OUR-TRANSACTIONS
```

Then install the needed packages (while skipping any Ruby gems needed only in production):

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5


### Github Actions

To make sure the linters' checks using Github Actions work properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Start working on your milestone as usual.
4. Open a PR from the `feature/branch` when your work is done.


### Running RSpec tests

- `cd` into the project directory;
- Run `bundle exec rspec`. 


### Deployment
- To deploy locally after cloning
- Run "rails server" in terminal
- open https://localhost:3000 in browser
- sign up and enjoy

## Authors

**Stephanie Sakuhuni**

- GitHub: [@stephanie041996](https://github.com/Stephanie041996)
- LinkedIn: [Stephanie Sakuhuni](www.linkedin.com/in/stephanie-michelle-sakuhuni) 

## ???? Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Stephanie041996/Activity_App/issues).

## Show your support

Give a ?????? if you like this project!

## ???? License

MIT

