class CoffeeAttemptsController < ApplicationController
  before_action :set_coffee_attempt, only: [:show, :edit, :update, :destroy]
  before_filter :authorize_user!, :except => [:index, :show]


  # GET /coffee_attempts
  # GET /coffee_attempts.json
  def index
    @coffee_attempts = CoffeeAttempt.all
  end

  # GET /coffee_attempts/1
  # GET /coffee_attempts/1.json
  def show
  end

  # GET /coffee_attempts/new
  def new
    @coffee_attempt = CoffeeAttempt.new
  end

  # GET /coffee_attempts/1/edit
  def edit
  end

  # POST /coffee_attempts
  # POST /coffee_attempts.json
  def create
    @coffee_attempt = CoffeeAttempt.new(coffee_attempt_params)
    
    respond_to do |format|
      if @coffee_attempt.save
        format.html { redirect_to @coffee_attempt, notice: 'Coffee attempt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coffee_attempt }
      else
        format.html { render action: 'new' }
        format.json { render json: @coffee_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffee_attempts/1
  # PATCH/PUT /coffee_attempts/1.json
  def update

    respond_to do |format|
      if @coffee_attempt.update(coffee_attempt_params)

        format.html { redirect_to @coffee_attempt, notice: 'Coffee attempt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coffee_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_attempts/1
  # DELETE /coffee_attempts/1.json
  def destroy
    @coffee_attempt.destroy
    respond_to do |format|
      format.html { redirect_to coffee_attempts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_attempt
      @coffee_attempt = CoffeeAttempt.find(params[:id])
      @comment = @coffee_attempt.comments.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffee_attempt_params
      params.require(:coffee_attempt).permit(:name, :description, :picture).merge(user: current_user)
    end
end
