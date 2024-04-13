# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


We getting Response Like this -

GET localhost:3000/courses
[
 {
     "id": 1,
     "name": "Pratiksha Singh",
     "description": "Testing",
     "created_at": "2024-04-12T16:17:02.638Z",
     "updated_at": "2024-04-12T16:17:02.638Z",
     "tutors": [
          {
             "id": 1,
             "name": "Computer",
             "expertise": "Test",
             "course_id": 1,
             "created_at": "2024-04-12T16:17:02.756Z",
             "updated_at": "2024-04-12T16:17:02.756Z"
         }
     ]
 },
 {
     "id": 2,
     "name": "name1",
     "description": "Description1",
     "created_at": "2024-04-12T16:21:01.609Z",
     "updated_at": "2024-04-12T16:21:01.609Z",
     "tutors": [
         {
             "id": 2,
             "name": "tutor1",
             "expertise": "expertise1",
             "course_id": 2,
             "created_at": "2024-04-12T16:21:01.625Z",
             "updated_at": "2024-04-12T16:21:01.625Z"
         }
     ]
 },
 {
     "id": 3,
     "name": "name2",
     "description": "Description2",
     "created_at": "2024-04-12T16:21:30.922Z",
     "updated_at": "2024-04-12T16:21:30.922Z",
     "tutors": [
         {
             "id": 3,
             "name": "tutor2",
             "expertise": "expertise2",
             "course_id": 3,
             "created_at": "2024-04-12T16:21:30.939Z",
             "updated_at": "2024-04-12T16:21:30.939Z"
         }
     ]
 }
]
