# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


doc = Nokogiri::HTML(open('https://www.harrys.com/help'))
qa_blocks = doc.css('.question-answer-block')

qa_blocks.each do |qa|

  question = qa.css('.question').text
  answer = qa.css('.answer').css('div > text()').map { |e| e.text }.join.strip
  Faq.create(question: question, answer: answer)
end
