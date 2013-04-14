class RegAnswersController < ApplicationController
  before_action :set_reg_answer, only: [:show, :edit, :update, :destroy]

  # GET /reg_answers
  # GET /reg_answers.json
  def index
    @reg_answers = RegAnswer.all
  end

  # GET /reg_answers/1
  # GET /reg_answers/1.json
  def show
  end

  # GET /reg_answers/new
  def new
    @reg_answer = RegAnswer.new
  end

  # GET /reg_answers/1/edit
  def edit
  end

  # POST /reg_answers
  # POST /reg_answers.json
  def create
    @reg_answer = RegAnswer.new(reg_answer_params)

    respond_to do |format|
      if @reg_answer.save
        format.html { redirect_to @reg_answer, notice: 'Reg answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reg_answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @reg_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reg_answers/1
  # PATCH/PUT /reg_answers/1.json
  def update
    respond_to do |format|
      if @reg_answer.update(reg_answer_params)
        format.html { redirect_to @reg_answer, notice: 'Reg answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reg_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_answers/1
  # DELETE /reg_answers/1.json
  def destroy
    @reg_answer.destroy
    respond_to do |format|
      format.html { redirect_to reg_answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_answer
      @reg_answer = RegAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_answer_params
      params.require(:reg_answer).permit(:reg_question_id, :content)
    end
end
