# MongoDB Seeded Database

This image has been set up to provide various data collections to allow you to access and practice against a seeded, local MongoDB instance.

The container can be found at docker hub [here](https://hub.docker.com/repository/docker/kcornwall/mongodbtestdata/general).

## Contents

* [Running the DB](#running-the-db)
* [Connecting to the DB](#connecting-to-the-db)
* [MongoDB filter queries](#mongodb-filter-queries)
* [Available collections](#available-collections)
  * [IMDB Data Structure](#imdb-data-structure)
  * [Quiz Data Structure](#quiz-data-structure)
  * [User data structure](#user-data-structure)
  * [Student details data structure](#student-details-data-structure)

## Running the DB

Trusting you have docker installed the below snippet will get the container up and running locally:

`docker run -d --name <name_your_container> -p 27017:27017 kcornwall/mongodbtestdata`

### Docker-compose

An easier way to set up the DB and have mongo-express (a web based client to interact with the data) is to use `docker-compose`.

#### Installing docker-compose

Checkout the documentation for docker-compose installation [here](https://docs.docker.com/compose/install/)

#### Running docker compose

Copy the `docker-compose.yml` or simply clone this project, ensure you're in root the folder and type:

`docker-compose up -d`

Using the `-d` flag will bring the container up in detached mode.

This will create your container for you as well as setting up mong-express which will allow you to review the data through typing `localhost:8081` into any browser.

## Connecting to the DB

The DB credentials are as below:

Username = root

password = password

Whether using code or an app such as mongoDB Compass you will need to connect to the DB using the below connection string:

`mongodb://root:password@localhost:27017`

## MongoDB filter queries

The documentation at [docs.mongodb.com](https://docs.mongodb.com/compass/current/query/filter/) are a great place to start learning about filter queries.

## Available collections

At the moment there are 4 different databases that contain collections:

* imdb - movie data
* quiz -> random quiz_questions
* random_user_details - generic randomly generated user details
* students - randomly generated student_data

for both the `student_data` and `user_details` the data has been randomly generated. The `imdb` and `quiz` data have been taken from public sources.

### IMDB Data Structure

```json
 {
  "title": "Avatar",
  "score": 7.9,
  "year": "2009",
  "duration": 178,
  "rating": "PG-13",
  "budget": 237000000,
  "genres": [
    "Action",
    "Adventure",
    "Fantasy",
    "Sci-Fi"
  ],
  "gross": 760505847,
  "director": "James Cameron",
  "actors": [
    "CCH Pounder",
    "Joel David Moore",
    "Wes Studi"
  ],
  "language": "English",
  "country": "USA"
}
```

### Quiz Data Structure

***IMPORTANT NOTE*** - there are many areas within the data with unicode in place of certain characters. These are in place on purpose to practice data transformation.

```json
{
      "category": "Entertainment: Video Games" ,
      "type": "multiple" ,
      "difficulty": "easy" ,
      "question": "What is the name of &quot;Team Fortress 2&quot; update, in which it became Free-to-play?" ,
      "correct_answer": "&Uuml;ber Update" ,
      "incorrect_answers": [
        "Pyromania Update" ,
        "Mann-Conomy Update" ,
        "Engineer Update"
      ]
    }
```

### User data structure

```json
{
  "id": 1,
  "first_name": "Flory",
  "last_name": "Boffey",
  "email": "fboffey0@pen.io",
  "company_name": "Lind Inc",
  "company_city": "Askiz",
  "job_title": "Information Systems Manager",
  "linkedIn_skill": "Access Control"
}
```

### Student details data structure

```json
{
  "first_name": "kara",
  "last_name": "darcey",
  "gender": "Gender Fluid",
  "email": "kara.darcey-71355@hotmail.com",
  "phone_number": "+447774443947",
  "current_status": "In Post Graduate Study",
  "university": "Aberystwyth University",
  "graduation_year": "2020",
  "degree": "business and tourism management with foundation year london",
  "visa": "No"
}
```
