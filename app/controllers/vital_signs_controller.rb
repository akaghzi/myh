class VitalSignsController < ApplicationController
  before_action :set_vital_sign, only: [:show, :edit, :update, :destroy]

  # GET /vital_signs
  # GET /vital_signs.json
  def index
    @vital_signs = VitalSign.all
  end

  # GET /vital_signs/1
  # GET /vital_signs/1.json
  def show
  end

  # GET /vital_signs/new
  def new
    # Find visit
    @visit = Visit.find(params[:visit_id])
    @patient = Patient.find(@visit.patient.id)
    # build vital signs
    @vital_sign = @visit.vital_signs.build(visit_id: @visit.id)
    # @vital_sign = VitalSign.new
  end

  # GET /vital_signs/1/edit
  def edit
    @patient = VitalSign.find(params[:id]).visit.patient
  end

  # POST /vital_signs
  # POST /vital_signs.json
  def create
    @vital_sign = VitalSign.new(vital_sign_params)

    respond_to do |format|
      if @vital_sign.save
        format.html { redirect_to edit_visit_path(id: @vital_sign.visit_id), notice: 'Vital sign was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vital_sign }
      else
        format.html { render action: 'new' }
        format.json { render json: @vital_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vital_signs/1
  # PATCH/PUT /vital_signs/1.json
  def update
    respond_to do |format|
      if @vital_sign.update(vital_sign_params)
        format.html { redirect_to edit_visit_path(id: @vital_sign.visit_id), notice: 'Vital sign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vital_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vital_signs/1
  # DELETE /vital_signs/1.json
  # def destroy
  #   @vital_sign.destroy
  #   respond_to do |format|
  #     format.html { redirect_to vital_signs_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
      def set_vital_sign
      @vital_sign = VitalSign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vital_sign_params
      params.require(:vital_sign).permit(:patient_id, :visit_id, :temperature, :heart_rate, 
                                         :bp_systolic, :bp_diastolic, :respiratory_rate, 
                                         :weight, :height)
    end
end
