# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create!([

  { name: 'Send an email confirmation upon valid sign up', level: 2 },
  { name: 'Add validations to nested model attributes', level: 1 },
  { name: 'Ajax call to update like count for a post', level: 3 },
  { name: 'Add the ability to search for a post by hashtag', level: 2, done: true, in_progress: false },
  { name: 'Add multi-user authentication', level: 2 }

  ])

Part.create!([

  { description: 'create a class method called search for model', estimate: 15, actual: 20, task_id: Task.second.id, done: true, priority: 1 },
  { description: 'create a route for likes', estimate: 15, actual: 10, task_id: Task.third.id, done: true, priority: 1 },
  { description: 'setup an ajax call for the likes route', estimate: 15, actual: 25, task_id: Task.third.id, done: true, priority: 1 },
  { description: 'write a test to make sure the like count persists into the database', estimate: 30, actual: 60, task_id: Task.third.id, done: true, priority: 1 },
  { description: 'create a sessions controller for each user that will need to be authenticated', estimate: 35, task_id: Task.last.id, done: false, priority: 2 },
  { description: 'add bcrypt', estimate: 10, actual: 5, task_id: Task.last.id, done: true, priority: 1 }

  ])