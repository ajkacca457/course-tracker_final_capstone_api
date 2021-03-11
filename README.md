# Course-Tracker-Api 

The course tracker app provides a way to track details about courses a student is pursuing.  New users must create an account in order to log in.  Once authenticated, users can create new courses, can update their course progress, can see detail report of the courses he or she created.

## Planning and Execution
When first planning my application I created the wireframe and about a dozen user stories.  Once I felt comfortable with my planning, I built the API.  Once the API was completed I worked on the front-end functionality.  Once I was satisfied with the behaviors of the front-end I completed the styling.

## Future Additions
I would like to add a search option and a sort option which would provide the user
with more ways to view their expense information.

## Routes

| Action  | What It Does                             | HTTP Verb | URL           |
|:-------:|:----------------------------------------:|:---------:|:-------------:|
| index   | Return a list of current user courses. | GET       | `/courses`     |
| create  | Create a new course.     | POST      | `/courses`     |
| show    | Return a single course.  | GET       | `/courses/:id` |
| update  | Update a single course.  | PATCH     | `/courses/:id` |
| destroy | Destroy a single course. | DELETE    | `/courses/:id` |


## ERD
![ERD](https://i.imgur.com/BFUv7AR.png)


## Features
The main purpose of building this app is to provide back-end support to react front-end app. This api provides the following functionalities:
- Provides list of courses created by users
- Provides sessions for users to perform authentication.
- Provides information of single course from database.
- Uses postgresql database to store data that has been passed through front-end  

## Built With

- Ruby on Rails
- Ruby
- Rubocop
- Atom text editor
- Rspec gem

## Getting Started

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

```bash
$ git clone `https://github.com/ajkacca457/course-tracker_final_capstone_api.git`
$ cd course-tracker_final_capstone_api
$ bundle install
$ Run `rails db:create` to create necessary tables in database
$ Run `rails db:migrate` to create necessary tables in database
$ Run `rails server` to see the user interface.
$ Open your browser and go to http://localhost:3000/
```

### Run tests

```
    rpsec --format documentation
```

# Authors

👤 **Avijit Karmaker**

- Github: [@Avijit](https://github.com/ajkacca457)
- Linkedin:[@Avijit](https://www.linkedin.com/in/avijit-karmaker-8738a54)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Copyright
This is a project developed by Microverse Student as the part of skill curriculum.
