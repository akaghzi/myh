class MedicationRoutesController < ApplicationController
  before_action :set_medication_route, only: [:show, :edit, :update, :destroy]

  # GET /medication_routes
  # GET /medication_routes.json
  def index
    @medication_routes = MedicationRoute.all
  end

  # GET /medication_routes/1
  # GET /medication_routes/1.json
  def show
  end

  # GET /medication_routes/new
  def new
    @medication_route = MedicationRoute.new
  end

  # GET /medication_routes/1/edit
  def edit
  end

  # POST /medication_routes
  # POST /medication_routes.json
  def create
    @medication_route = MedicationRoute.new(medication_route_params)

    respond_to do |format|
      if @medication_route.save
        format.html { redirect_to @medication_route, notice: 'Medication route was successfully created.' }
        format.json { render action: 'show', status: :created, location: @medication_route }
      else
        format.html { render action: 'new' }
        format.json { render json: @medication_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medication_routes/1
  # PATCH/PUT /medication_routes/1.json
  def update
    respond_to do |format|
      if @medication_route.update(medication_route_params)
        format.html { redirect_to @medication_route, notice: 'Medication route was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @medication_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medication_routes/1
  # DELETE /medication_routes/1.json
  def destroy
    @medication_route.destroy
    respond_to do |format|
      format.html { redirect_to medication_routes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medication_route
      @medication_route = MedicationRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medication_route_params
      params.require(:medication_route).permit(:name)
    end
end
