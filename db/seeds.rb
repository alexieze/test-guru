# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

User.create(name: 'Albert Khasanov',
            username: 'albert',
            email: 'albert@gestiv.ru',
            password: '456123',
            register_date: Time.now, last_visit_date: Time.now)

UserId = User.find_by('email=?', 'albert@gestiv.ru').id



Category.delete_all

Category.create(
  title: 'Ruby On Rails',
  description: 'Описание категории тестов для ROR',
  published: 1)


CategoryId = Category.find_by('title=?', 'Ruby On Rails').id

p "CategoryId - #{CategoryId}"

Test.create(
  title: 'Архитектура клиент-сервер и HTTP-протокол',
  level: 1,
  category_id: CategoryId)

Test.create(
  title: 'Введение в Rails',
  level: 1,
  category_id: CategoryId
)

TestId = Test.find_by('title=?', 'Введение в Rails').id

Question.delete_all

Question.create(
  title: 'Назовите метод получения ресурса',
  body: 'Какое-то описание',
  test_id: TestId
)

Question.create(
  title: 'Назовите метод создания ресурса',
  body: 'Какое-то описание',
  test_id: TestId
)

FirstQuestionId = Question.find_by('title=?', 'Назовите метод получения ресурса').id

SecondQuestionId = Question.find_by('title=?', 'Назовите метод создания ресурса').id

Answer.delete_all

Answer.create([{
                 title: 'GET',
                 correct: 1,
                 question_id: FirstQuestionId,
                 published: 1
               }, {
                 title: 'POST',
                 correct: 0,
                 question_id: FirstQuestionId,
                 published: 1
               }, {
                 title: 'DELETE',
                 correct: 0,
                 question_id: FirstQuestionId,
                 published: 1
               }])

Answer.create([{
                 title: 'GET',
                 correct: 0,
                 question_id: SecondQuestionId,
                 published: 1
               }, {
                 title: 'POST',
                 correct: 1,
                 question_id: SecondQuestionId,
                 published: 1
               }, {
                 title: 'DELETE',
                 correct: 0,
                 question_id: SecondQuestionId,
                 published: 1
               }])

TestsOfUser.delete_all

Tests = Test.where('level=1')

Tests.each do |test|
  TestsOfUser.create(test_id: test.id, user_id: UserId)
end