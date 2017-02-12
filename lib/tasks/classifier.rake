require 'classifier-reborn'
namespace :classifier do
  desc "TODO"
  task train: :environment do
    redis_backend = ClassifierReborn::BayesRedisBackend.new
    classifier = ClassifierReborn::Bayes.new(*Faq.all.pluck(:answer), backend: redis_backend)
    Faq.all.each do |faq|
      classifier.train faq.answer, faq.question
    end
    byebug
  end

end
