class CustomerResponsesController < ApplicationController
  before_action :set_customer_response, only: [:show, :edit, :update, :destroy]

  # GET /customer_responses
  # GET /customer_responses.json
  def index
    @customer_responses = CustomerResponse.all
  end

  # GET /customer_responses/1
  # GET /customer_responses/1.json
  def show
  end

  # GET /customer_responses/new
  def new
    @customer_response = CustomerResponse.new
  end

  # GET /customer_responses/1/edit
  def edit
  end

  # POST /customer_responses
  # POST /customer_responses.json
  def create
    @customer_response = CustomerResponse.new(customer_response_params)

    respond_to do |format|
      if @customer_response.save
        format.html { redirect_to @customer_response, notice: 'Customer response was successfully created.' }
        format.json { render :show, status: :created, location: @customer_response }
      else
        format.html { render :new }
        format.json { render json: @customer_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_responses/1
  # PATCH/PUT /customer_responses/1.json
  def update
    respond_to do |format|
      if @customer_response.update(customer_response_params)
        format.html { redirect_to @customer_response, notice: 'Customer response was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_response }
      else
        format.html { render :edit }
        format.json { render json: @customer_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_responses/1
  # DELETE /customer_responses/1.json
  def destroy
    @customer_response.destroy
    respond_to do |format|
      format.html { redirect_to customer_responses_url, notice: 'Customer response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_response
      @customer_response = CustomerResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_response_params
      params.require(:customer_response).permit(:answer_id, :confidence, :user_id, :csr, :query)
    end
end
