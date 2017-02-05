#harrys
doc = Nokogiri::HTML(open('https://www.harrys.com/help'))
qa_blocks = doc.css('.question-answer-block')
harrys = File.open("harrys.yml", "w")
harrys << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
  question = qa.css('.question').text.strip
  answer = qa.css('.answer').css('div > text()').map { |e| e.text }.join.strip
  Faq.find_or_create_by(question: question, answer: answer)
  hash[:faqs] << {question: question, answer: answer}
end.to_yaml
harrys.close



#llbean
doc = Nokogiri::HTML(open('https://www.llbean.com/llb/shop/510618?nav=gn-hp'))
qa_blocks = doc.css("#mainbody > div.mainBody.left > div > div:nth-child(5) > div")[1..-1]
ll_bean = File.open("ll_bean.yml",  "w")
ll_bean << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
  question = qa.css("p").first.text.strip
  answer = qa.css("span").text.strip
  Faq.find_or_create_by(question: question, answer: answer)
  hash[:faqs] << {question: question, answer: answer}
end.to_yaml
ll_bean.close



#serena and lily
doc = Nokogiri::HTML(open('http://www.serenaandlily.com/faqs/CS-faqs.html'))
qa_blocks = doc.css('.faqquestion')
serena_and_lily = File.open("serena_and_lily.yml", "w")
serena_and_lily << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
  question = qa.css(".question").text.strip
  answer = qa.css(".answer").text.strip
  Faq.find_or_create_by(question: question, answer: answer)
  hash[:faqs] << {question: question, answer: answer}
end.to_yaml
serena_and_lily.close

#Raden faq
doc = Nokogiri::HTML(open('https://www.raden.com/support?gclid=CL_Rzb_w-dECFcWEswodtLcIYg'))
qa_blocks = doc.css('.faq')
raden = File.open("raden.yml", "w")
raden << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
  question = qa.css('.question').text.strip
  answer = qa.css(".answer").text.strip
  Faq.find_or_create_by(question: question, answer: answer)
  hash[:faqs] << {question: question, answer: answer}
end.to_yaml

#Raden faq
doc = Nokogiri::HTML(open('https://www.raden.com/'))
qa_blocks = doc.css('.faq')
raden << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
  question = qa.css('.question').text.strip
  answer = qa.css(".answer").text.strip
  hash[:faqs] << {question: question, answer: answer}
end.to_yaml
raden.close
