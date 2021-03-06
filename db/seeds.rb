# #harrys
company = Company.find_or_create_by(name: "Harrys")
# doc = Nokogiri::HTML(open('https://www.harrys.com/help'))
# qa_blocks = doc.css('.question-answer-block')
# harrys = File.open("harrys.yml", "w")
# company = Company.find_or_create_by(name: "Harrys")
# harrys << qa_blocks.each_with_object({faqs: []}) do |qa, hash|
#   question = qa.css('.question').text.strip
#   answer = qa.css('.answer').css('div > text()').map { |e| e.text }.join.strip
#   if question && answer
#     conversation = Conversation.find_or_create_by(answer_1: answer)
#     question = Question.find_or_create_by(query: question, confidence: -60, company_id: company.id,
#     conversation_id: conversation.id)
#     hash[:faqs] << {question: question, answer: answer}
#   end
# end.to_yaml
# harrys.close

# parse csv File
require 'csv'
csv_text = File.read('harrys_conversations.csv', :encoding => "windows-1251:utf-8")
csv=CSV.parse(csv_text, headers:true)
company = Company.find_or_create_by(name: "Harrys")

csv.each do |row|
  conversation = Conversation.find_or_create_by(answer_1: row[5], answer_2: row[7], answer_3: row[9])
  question = Question.find_or_create_by(query: row[4], confidence: -60, company_id: company.id, conversation_id: conversation.id)
end

# doc = Nokogiri::HTML(open('https://bonobos.com/help'))
# help_links = doc.css(".col-md-4 a")
#
# company = Company.find_or_create_by(name: "Bonobos")
# browser = Watir::Browser.new
# browser.goto "https://bonobos.com/help"
# browser.button(class: "close").click
# iframe = browser.iframe(class:"desk-iframe")
# sidebar = iframe.elements(class:"col-md-4")
# help_links = sidebar.map {|a| a.links.first.href}
# help_links.each do |link|
#   browser.goto link
#   question_blocks = browser.elements(class: "article")
#   question_blocks.each do |question_block|
#     query = question_block.text
#     question_block.click
#     answer = question_block.element(class: "body", tag_name: "article").text
#     conversation = Conversation.find_or_create_by(answer_1: answer)
#     question = Question.find_or_create_by(query: query, confidence: -60, company_id: company.id,
#     image_url: "https://harrysx-a.akamaihd.net/assets/images/index_images/attachments/551f682db5a708e31b1881a1d9943da93f626e7f.jpg", conversation_id: conversation.id)
#   end
# end
#



User.create(
  name: "Lisa Dolan",
  age: 30,
  address: "420 west 42nd street",
  city: "New York City",
  state: "New York",
  zip: 10022,
  email: "lisa@angelintelligence.io",
  phone1: "917.825.9441",
  phone2: "212.397.3748",
  password: "angelbean15"
)


User.create(
  name: "Caroline Davidson",
  age: 30,
  address: "9 west 57th street",
  city: "New York City",
  state: "New York",
  zip: 10022,
  email: "caroline@beanstalk.vc",
  phone1: "970.420.6932",
  phone2: "212.212.2121",
  password: "angelbean16"
)
  User.create(
    name: "Ken Seiff",
    age: 29,
    address: "9 west 57th street",
    city: "New York City",
    state: "New York",
    zip: 10022,
    email: "Ken@seiff.com",
    phone1: "917.257.6643",
    phone2: "646.365.5002",
    password: "angelbean17"
)
User.create(
  name: "Andrew Fine",
  age: 29,
  address: "9 west 57th street",
  city: "New York City",
  state: "New York",
  zip: 10022,
  email: "andrew.fine@noveltmt.com",
  phone1: "212-201-8241",
  phone2: "917-660-4307",
  password: "angelbean18"
)
User.create(
  name: "Fred Taylor",
  age: 39,
  address: "9 west 57th street",
  city: "New York City",
  state: "New York",
  zip: 10022,
  email: "Ffred.taylor2@verizon.net",
  phone1: "214.957.4090",
  phone2: "646.365.5002",
  password: "angelbean19"
)
User.create(
  name: "Marko Bon",
  age: 29,
  address: "9 west 57th street",
  city: "New York City",
  state: "New York",
  zip: 10022,
  email: "bon.marko@gmail.com",
  phone1: "917.723.9886",
  phone2: "646.365.5002",
  password: "angelbean20"
)
User.create(
  name: "Jeanne Bliss",
  age: 29,
  address: "9 west 57th street",
  city: "New York City",
  state: "New York",
  zip: 10022,
  email: "jeanne@customerbliss.com",
  phone1: "425.444.7654",
  phone2: "646.365.5002",
  password: "angelbean21"
)
User.create(
  name: "Christian Flores",
  age: 29,
  address: "9 west 57th street",
  city: "New York City",
  state: "New York",
  zip: 10022,
  email: "christian@angelintelligence.io",
  phone1: "425.444.7654",
  phone2: "646.365.5002",
  password: "angelbean22"
)
User.create(
  name: "Adam Covalt",
  age: 29,
  address: "45 W 25th street",
  city: "New York City",
  state: "New York",
  zip: 10010,
  email: "acovalt@bonobos.com",
  phone1: "425.444.7654",
  phone2: "646.365.5002",
  password: "angelbean23"
)
User.create(
  name: "Katie Rogers",
  age: 29,
  address: "161 avenue of the americas",
  city: "New York City",
  state: "New York",
  zip: 10013,
  email: "katie@harrys.com",
  phone1: "907.317.4345",
  phone2: "646.979.6495",
  password: "angelbean24"
)

company = Company.find_by(name: "Harrys")
Product.create(
  name: "Truman Set",
  price: 15.00,
  color: "orange",
  size: nil,
  fit: nil,
  company_id: company.id,
  image_url: "https://harrysx-a.akamaihd.net/assets/images/index_images/attachments/551f682db5a708e31b1881a1d9943da93f626e7f.jpg"
)
Product.create(
  name: "Truman Set",
  price: 15.00,
  color: "green",
  size: nil,
  fit: nil,
  company_id: company.id,
  image_url: "https://harrysx-a.akamaihd.net/assets/images/index_images/attachments/551f682db5a708e31b1881a1d9943da93f626e7f.jpg"
)
Product.create(
  name: "Truman Set",
  price: 15.00,
  color: "blue",
  size: nil,
  fit: nil,
  company_id: company.id,
  image_url: "https://harrysx-a.akamaihd.net/assets/images/index_images/attachments/551f682db5a708e31b1881a1d9943da93f626e7f.jpg"
)

Product.create(
  name: "Winston Set",
  price: 25.00,
  color: "silver",
  size: nil,
  fit: nil,
  company_id: company.id,
  image_url: "https://harrysx-a.akamaihd.net/assets/images/index_images/attachments/8875d415200f24b9c66ed69a341ab43b42215ed6.jpg"
)

company = Company.find_by(name: "Harrys")
20.times do
  user_id = User.order("RANDOM()").limit(1).first.id
  product_id = Product.order("RANDOM()").limit(1).first.id
  question_id = Question.where("query is not null and company_id = ?", company.id).order("RANDOM()").limit(1).first.id
  order = Order.create(user_id: user_id, product_id: product_id, quantity: rand(3) + 1)
  ResponseHistory.create(user_id: user_id, question_id: question_id, order_id: order.id)
end
#
# company = Company.find_or_create_by(name: "Bonobos")
# browser = Watir::Browser.new
# browser.goto "https://bonobos.com/shop/pants-and-bottoms/chinos"
# browser.button(class: "close").click
# links=browser.elements(class:"category-item").map { |e| e.links.first.href}
# links.each do |link|
#   browser.goto link
#   name = browser.element(class:"summary---name---2z4RC").text
#   price = browser.element(class:"summary---fullPrice---fHdE-").text.gsub("$","").to_f
#   image_url = browser.element(class: "product---carouselImage---1FZa1")
#   image_url = image_url.element(tag_name:"img").src
#   option_types = browser.elements(class:"product---input---3pyEh")
#   color = browser.element(class:"radio_group_swatch---selectedValuePresentation---13vn2").text
#   fits = option_types[1].elements(class: "text_tag---text---3FCj_")
#   fits = fits.map { |e| e.text }
#   waists = option_types[2].elements(class: "text_tag---text---3FCj_")
#   waists = waists.map { |e| e.text }
#   lengths = option_types[3].elements(class: "text_tag---text---3FCj_")
#   lengths = lengths.map { |e| e.text }
#   fits.each do |fit|
#     waists.each do |waist|
#       lengths.each do |length|
#         Product.find_or_create_by(name: name,
#                                   company_id: company.id,
#                                   price: price,
#                                   color: color,
#                                   size: "#{waist}x#{length}",
#                                   fit: fit,
#                                   image_url: image_url
#                                 )
#       end
#     end
#   end
# end
