class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = self.search(params[:search]) || Appointment.future
    # @appointments = Appointment.future.order("appointment_date,appointment_slot_id")
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @patient = Patient.find(params[:patient_id])
    @appointment = @patient.appointments.build(user_id: session[:user_id])
    # @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @appointment }
      else
        format.html { render action: 'new' }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end
  def search(search_string)
    # @appointments = Appointment.future.where("appointment_reason like lower('%#{search_string}%')")
    @appointments = Appointment.future.joins(:patient).where("(patients.last_name||patients.first_name) like lower('%#{search_string}%')").order("appointment_date,last_name,first_name")
    # notice: "No patient found with that spelling try with alternate one" if @patients.blank?
  end
  # DELETE /appointments/1
  # DELETE /appointments/1.json
  # def destroy
  #   @appointment.destroy
  #   respond_to do |format|
  #     format.html { redirect_to appointments_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
      @patient = @appointment.patient
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:user_id, :patient_id, :appointment_date, :appointment_slot_id, 
                                          :appointment_type, :appointment_reason, :cancelled, :cancellation_reason)
    end
end
