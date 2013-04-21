class MedTestsController < ApplicationController
  before_action :set_med_test, only: [:show, :edit, :update, :destroy]

  # GET /med_tests
  # GET /med_tests.json
  def index
    @med_tests = MedTest.all
  end

  # GET /med_tests/1
  # GET /med_tests/1.json
  def show
  end

  # GET /med_tests/new
  def new
    @med_test = MedTest.new
  end

  # GET /med_tests/1/edit
  def edit
  end

  # POST /med_tests
  # POST /med_tests.json
  def create
    @med_test = MedTest.new(med_test_params)

    respond_to do |format|
      if @med_test.save
        format.html { redirect_to @med_test, notice: 'Med test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @med_test }
      else
        format.html { render action: 'new' }
        format.json { render json: @med_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /med_tests/1
  # PATCH/PUT /med_tests/1.json
  def update
    respond_to do |format|
      if @med_test.update(med_test_params)
        format.html { redirect_to @med_test, notice: 'Med test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @med_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_tests/1
  # DELETE /med_tests/1.json
  def destroy
    @med_test.destroy
    respond_to do |format|
      format.html { redirect_to med_tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_med_test
      @med_test = MedTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def med_test_params
      params.require(:med_test).permit(:patient_id, :visit_id, :med_test_type_id, :measurement, :mearsurement_note, :ordered_at, :reviewed_at)
    end
end
