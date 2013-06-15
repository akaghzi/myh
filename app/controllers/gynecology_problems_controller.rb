class GynecologyProblemsController < ApplicationController
  before_action :set_gynecology_problem, only: [:show, :edit, :update, :destroy]

  # GET /gynecology_problems
  # GET /gynecology_problems.json
  def index
    @gynecology_problems = GynecologyProblem.all
  end

  # GET /gynecology_problems/1
  # GET /gynecology_problems/1.json
  def show
  end

  # GET /gynecology_problems/new
  def new
    @gynecology_problem = GynecologyProblem.new
  end

  # GET /gynecology_problems/1/edit
  def edit
  end

  # POST /gynecology_problems
  # POST /gynecology_problems.json
  def create
    @gynecology_problem = GynecologyProblem.new(gynecology_problem_params)

    respond_to do |format|
      if @gynecology_problem.save
        format.html { redirect_to @gynecology_problem, notice: 'Gynecology problem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gynecology_problem }
      else
        format.html { render action: 'new' }
        format.json { render json: @gynecology_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gynecology_problems/1
  # PATCH/PUT /gynecology_problems/1.json
  def update
    respond_to do |format|
      if @gynecology_problem.update(gynecology_problem_params)
        format.html { redirect_to @gynecology_problem, notice: 'Gynecology problem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gynecology_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gynecology_problems/1
  # DELETE /gynecology_problems/1.json
  # def destroy
  #   @gynecology_problem.destroy
  #   respond_to do |format|
  #     format.html { redirect_to gynecology_problems_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gynecology_problem
      @gynecology_problem = GynecologyProblem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gynecology_problem_params
      params.require(:gynecology_problem).permit(:name)
    end
end
