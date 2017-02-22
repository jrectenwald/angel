#harrys
doc = Nokogiri::HTML(open('https://www.harrys.com/help'))
qa_blocks = doc.css('.question-answer-block')
harrys = File.open("harrys.yml", "w")
company = Company.create(name: "Harrys")
harrys << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
  question = qa.css('.question').text.strip
  response = qa.css('.answer').css('div > text()').map { |e| e.text }.join.strip
  if response && question
    answer = Answer.find_or_create_by(response_text: response, company_id: company.id)
    cr = CustomerResponse.find_or_create_by(query: question, answer_id: answer.id, confidence: -60)
    hash[:faqs] << {question: question, answer: answer}
  end
end.to_yaml
harrys.close

# parse csv File
require 'csv'
csv_text = File.read('harrys_conversations.csv')
csv=CSV.parse(csv_text, headers:true)
company = Company.find_or_create_by(name: "Harrys")
csv.each do |row|
  conversation = Conversation.find_or_create_by(answer_1: row[2], answer_2: row[4], answer_3: row[6])
  question = Question.find_or_create_by(query: row[1], confidence: -60, company_id: company.id, conversation_id: conversation.id)
end

doc = Nokogiri::HTML(open('https://bonobos.com/help'))
help_links = doc.css(".col-md-4 a")

browser = Watir::Browser.new
browser.goto "https://bonobos.com/help"
browser.button(class: "close").click
iframe = browser.iframe(class:"desk-iframe")
sidebar = iframe.elements(class:"col-md-4")
help_links = sidebar.map {|a| a.links.first.href}
help_links.each do |link|
  browser.goto link
  question_block = browser.element(class: "article")
  query = question_block.text
  question_block.click
  answer = question_block.element(tag_name: "article").text
end


#llbean
# doc = Nokogiri::HTML(open('https://www.llbean.com/llb/shop/510618?nav=gn-hp'))
# qa_blocks = doc.css("#mainbody > div.mainBody.left > div > div:nth-child(5) > div")[1..-1]
# ll_bean = File.open("ll_bean.yml",  "w")
# company = Company.create(name: "Llbean")
# ll_bean << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
#   question = qa.css("p").first.text.strip
#   answer = qa.css("span").text.strip
#   Faq.find_or_create_by(question: question, answer: answer, company_id: company.id)
#   hash[:faqs] << {question: question, answer: answer}
# end.to_yaml
# ll_bean.close
#


#serena and lily
# doc = Nokogiri::HTML(open('http://www.serenaandlily.com/faqs/CS-faqs.html'))
# qa_blocks = doc.css('.faqquestion')
# serena_and_lily = File.open("serena_and_lily.yml", "w")
# company = Company.create(name: "Serena and Lily")
# serena_and_lily << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
#   question = qa.css(".question").text.strip
#   answer = qa.css(".answer").text.strip
#   Faq.find_or_create_by(question: question, answer: answer, company_id: company.id)
#   hash[:faqs] << {question: question, answer: answer}
# end.to_yaml
# serena_and_lily.close

#Raden faq
# doc = Nokogiri::HTML(open('https://www.raden.com/support?gclid=CL_Rzb_w-dECFcWEswodtLcIYg'))
# qa_blocks = doc.css('.faq')
# raden = File.open("raden.yml", "w")
# company = Company.create(name: "Raden")
# raden << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
#   question = qa.css('.question').text.strip
#   answer = qa.css(".answer").text.strip
#   Faq.find_or_create_by(question: question, answer: answer, company_id: company.id)
#   hash[:faqs] << {question: question, answer: answer}
# end.to_yaml

#Raden faq
# doc = Nokogiri::HTML(open('https://www.raden.com/start'))
# qa_blocks = doc.css('.faq')
# raden << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
#   question = qa.css('.question').text.strip
#   answer = qa.css(".answer").text.strip
#   hash[:faqs] << {question: question, answer: answer}
# end.to_yaml
# raden.close
