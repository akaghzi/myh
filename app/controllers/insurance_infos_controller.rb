class InsuranceInfosController < ApplicationController
  before_action :set_insurance_info, only: [:show, :edit, :update, :destroy]

  # GET /insurance_infos
  # GET /insurance_infos.json
  def index
    @insurance_infos = InsuranceInfo.all
  end

  # GET /insurance_infos/1
  # GET /insurance_infos/1.json
  def show
  end

  # GET /insurance_infos/new
  def new
    @insurance_info = InsuranceInfo.new
  end

  # GET /insurance_infos/1/edit
  def edit
  end

  # POST /insurance_infos
  # POST /insurance_infos.json
  def create
    @insurance_info = InsuranceInfo.new(insurance_info_params)

    respond_to do |format|
      if @insurance_info.save
        format.html { redirect_to patient_path(id: @insurance_info.patient_id), notice: 'Insurance info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @insurance_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @insurance_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurance_infos/1
  # PATCH/PUT /insurance_infos/1.json
  def update
    respond_to do |format|
      if @insurance_info.update(insurance_info_params)
        format.html { redirect_to patient_path(id: @insurance_info.patient_id), notice: 'Insurance info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @insurance_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurance_infos/1
  # DELETE /insurance_infos/1.json
  # def destroy
  #   @insurance_info.destroy
  #   respond_to do |format|
  #     format.html { redirect_to insurance_infos_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance_info
      @insurance_info = InsuranceInfo.find(params[:id])
      @patient = @insurance_info.patient
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insurance_info_params
      params.require(:insurance_info).permit(:patient_id, :insurance_carrier, :insurance_member_id, :insurance_guarantor, :insurance_guarantor_relationship)
    end
end
