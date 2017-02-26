class ResponseHistoriesController < ApplicationController
  before_action :set_response_history, only: [:show, :edit, :update, :destroy]

  # GET /response_histories
  # GET /response_histories.json
  def index
    @response_histories = ResponseHistory.all
  end

  # GET /response_histories/1
  # GET /response_histories/1.json
  def show
  end

  # GET /response_histories/new
  def new
    @response_history = ResponseHistory.new
  end

  # GET /response_histories/1/edit
  def edit
  end

  # POST /response_histories
  # POST /response_histories.json
  def create
    @response_history = ResponseHistory.new(response_history_params)

    respond_to do |format|
      if @response_history.save
        format.html { redirect_to @response_history, notice: 'Response history was successfully created.' }
        format.json { render :show, status: :created, location: @response_history }
      else
        format.html { render :new }
        format.json { render json: @response_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /response_histories/1
  # PATCH/PUT /response_histories/1.json
  def update
    respond_to do |format|
      if @response_history.update(response_history_params)
        format.html { redirect_to @response_history, notice: 'Response history was successfully updated.' }
        format.json { render :show, status: :ok, location: @response_history }
      else
        format.html { render :edit }
        format.json { render json: @response_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /response_histories/1
  # DELETE /response_histories/1.json
  def destroy
    @response_history.destroy
    respond_to do |format|
      format.html { redirect_to response_histories_url, notice: 'Response history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response_history
      @response_history = ResponseHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_history_params
      params.require(:response_history).permit(:user_id, :question_id)
    end
end
