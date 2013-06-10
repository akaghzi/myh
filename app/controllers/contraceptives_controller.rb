class ContraceptivesController < ApplicationController
  before_action :set_contraceptive, only: [:show, :edit, :update, :destroy]

  # GET /contraceptives
  # GET /contraceptives.json
  def index
    @contraceptives = Contraceptive.all
  end

  # GET /contraceptives/1
  # GET /contraceptives/1.json
  def show
  end

  # GET /contraceptives/new
  def new
    @contraceptive = Contraceptive.new
  end

  # GET /contraceptives/1/edit
  def edit
  end

  # POST /contraceptives
  # POST /contraceptives.json
  def create
    @contraceptive = Contraceptive.new(contraceptive_params)

    respond_to do |format|
      if @contraceptive.save
        format.html { redirect_to @contraceptive, notice: 'Contraceptive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contraceptive }
      else
        format.html { render action: 'new' }
        format.json { render json: @contraceptive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contraceptives/1
  # PATCH/PUT /contraceptives/1.json
  def update
    respond_to do |format|
      if @contraceptive.update(contraceptive_params)
        format.html { redirect_to @contraceptive, notice: 'Contraceptive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contraceptive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contraceptives/1
  # DELETE /contraceptives/1.json
  def destroy
    @contraceptive.destroy
    respond_to do |format|
      format.html { redirect_to contraceptives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contraceptive
      @contraceptive = Contraceptive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contraceptive_params
      params.require(:contraceptive).permit(:name)
    end
end
