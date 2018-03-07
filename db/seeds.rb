# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Albert Khasanov',
            username: 'albert',
            email: 'albert@gestiv.ru',
            password: '456123',
            register_date: Time.now, last_visit_date: Time.now)

Category.create(
  title: 'Ruby On Rails',
  description: 'Описание категории тестов для ROR',
  published: 1)


Test.create(
  title: 'Архитектура клиент-сервер и HTTP-протокол',
  level: 1,
  category_id: 1)

Test.create(
  title: 'Введение в Rails',
  level: 1,
  category_id: 1
)


Question.create(
  title: 'Назовите метод получения ресурса',
  body: 'Какое-то описание',
  test_id: 1
)

Question.create(
  title: 'Назовите метод создания ресурса',
  body: 'Какое-то описание',
  test_id: 1
)


Answer.create([{
                 title: 'GET',
                 correct: 1,
                 question_id: 1,
                 published: 1
               }, {
                 title: 'POST',
                 correct: 0,
                 question_id: 1,
                 published: 1
               }, {
                 title: 'DELETE',
                 correct: 0,
                 question_id: 1,
                 published: 1
               }])

Answer.create([{
                 title: 'GET',
                 correct: 0,
                 question_id: 2,
                 published: 1
               }, {
                 title: 'POST',
                 correct: 1,
                 question_id: 2,
                 published: 1
               }, {
                 title: 'DELETE',
                 correct: 0,
                 question_id: 2,
                 published: 1
               }])


