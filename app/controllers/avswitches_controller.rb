class AvswitchesController < ApplicationController
  before_action :set_avswitch, only: [:show, :edit, :update, :destroy]

  # GET /avswitches
  # GET /avswitches.json
  def index
    @avswitches = Avswitch.all
  end

  # GET /avswitches/1
  # GET /avswitches/1.json
  def show
  end

  # GET /avswitches/new
  def new
    @avswitch = Avswitch.new
  end

  # GET /avswitches/1/edit
  def edit
  end

  # POST /avswitches
  # POST /avswitches.json
  def create
    @avswitch = Avswitch.new(avswitch_params)

    respond_to do |format|
      if @avswitch.save
        format.html { redirect_to @avswitch, notice: 'Avswitch was successfully created.' }
        format.json { render :show, status: :created, location: @avswitch }
      else
        format.html { render :new }
        format.json { render json: @avswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avswitches/1
  # PATCH/PUT /avswitches/1.json
  def update
    respond_to do |format|
      if @avswitch.update(avswitch_params)
        format.html { redirect_to @avswitch, notice: 'Avswitch was successfully updated.' }
        format.json { render :show, status: :ok, location: @avswitch }
      else
        format.html { render :edit }
        format.json { render json: @avswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avswitches/1
  # DELETE /avswitches/1.json
  def destroy
    @avswitch.destroy
    respond_to do |format|
      format.html { redirect_to avswitches_url, notice: 'Avswitch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avswitch
      @avswitch = Avswitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avswitch_params
      params.require(:avswitch).permit(:model, :mac, :serial)
    end
end
