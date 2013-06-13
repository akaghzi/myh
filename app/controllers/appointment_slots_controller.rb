class AppointmentSlotsController < ApplicationController
  before_action :set_appointment_slot, only: [:show, :edit, :update, :destroy]

  # GET /appointment_slots
  # GET /appointment_slots.json
  def index
    @appointment_slots = AppointmentSlot.all
  end

  # GET /appointment_slots/1
  # GET /appointment_slots/1.json
  def show
  end

  # GET /appointment_slots/new
  def new
    @appointment_slot = AppointmentSlot.new
  end

  # GET /appointment_slots/1/edit
  def edit
  end

  # POST /appointment_slots
  # POST /appointment_slots.json
  def create
    @appointment_slot = AppointmentSlot.new(appointment_slot_params)

    respond_to do |format|
      if @appointment_slot.save
        format.html { redirect_to @appointment_slot, notice: 'Appointment slot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @appointment_slot }
      else
        format.html { render action: 'new' }
        format.json { render json: @appointment_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_slots/1
  # PATCH/PUT /appointment_slots/1.json
  def update
    respond_to do |format|
      if @appointment_slot.update(appointment_slot_params)
        format.html { redirect_to @appointment_slot, notice: 'Appointment slot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @appointment_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_slots/1
  # DELETE /appointment_slots/1.json
  # def destroy
  #   @appointment_slot.destroy
  #   respond_to do |format|
  #     format.html { redirect_to appointment_slots_url }
  #     format.json { head :no_content }
  #   end
  # end
  # 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_slot
      @appointment_slot = AppointmentSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_slot_params
      params.require(:appointment_slot).permit(:name)
    end
end
