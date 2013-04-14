class RegQuestionsController < ApplicationController
  before_action :set_reg_question, only: [:show, :edit, :update, :destroy]

  # GET /reg_questions
  # GET /reg_questions.json
  def index
    @reg_questions = RegQuestion.all
  end

  # GET /reg_questions/1
  # GET /reg_questions/1.json
  def show
  end

  # GET /reg_questions/new
  def new
    @reg_question = RegQuestion.new
  end

  # GET /reg_questions/1/edit
  def edit
  end

  # POST /reg_questions
  # POST /reg_questions.json
  def create
    @reg_question = RegQuestion.new(reg_question_params)

    respond_to do |format|
      if @reg_question.save
        format.html { redirect_to @reg_question, notice: 'Reg question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reg_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @reg_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reg_questions/1
  # PATCH/PUT /reg_questions/1.json
  def update
    respond_to do |format|
      if @reg_question.update(reg_question_params)
        format.html { redirect_to @reg_question, notice: 'Reg question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reg_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_questions/1
  # DELETE /reg_questions/1.json
  def destroy
    @reg_question.destroy
    respond_to do |format|
      format.html { redirect_to reg_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_question
      @reg_question = RegQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_question_params
      params.require(:reg_question).permit(:content, :sex, :minimum_age)
    end
end
