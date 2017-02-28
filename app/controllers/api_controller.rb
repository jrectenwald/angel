class ApiController < ApplicationController
  skip_before_filter :verify_authenticity_token


  def companies
    render json: Company.all
  end

  def users
    render json: User.all, include: [:orders, :response_histories]
  end

  def user
    user = User.find(params[:user_id])
    render json: user, include: [:orders, :response_histories]
  end

  def questions
    render json: Question.where(company_id: params["company_id"])
  end

  def conversations
    conversation_ids = Question.where(company_id: params["company_id"]).pluck(:conversation_id)
    render json: Conversation.where(id: conversation_ids)
  end

  def conversation
    company = Company.find(params["company_id"])
    question = params["question"]
    questions = company.questions.pluck(:query, :conversation_id)
    questions = questions.select {|q| q[0] && q[1]}
    conversation_ids = questions.map {|q| q[1]}.uniq
    classifier = ClassifierReborn::Bayes.new(*conversation_ids)
    questions.each do |question|
      classifier.train question[1], question[0]
    end
    @answer = classifier.classify_with_score question
    question = Question.find_or_create_by(query: question, conversation_id: @answer[0], company_id: company.id)
    render json: {question: question, conversation: Conversation.find(@answer[0])}
    # redirect_to dashboard_conversations_url(id: @answer[0], question: question, answer: "answer_1")
  end
end
