class MicreceiversController < ApplicationController
  before_action :set_micreceiver, only: [:show, :edit, :update, :destroy]

  # GET /micreceivers
  # GET /micreceivers.json
  def index
    @micreceivers = Micreceiver.all
  end

  # GET /micreceivers/1
  # GET /micreceivers/1.json
  def show
  end

  # GET /micreceivers/new
  def new
    @micreceiver = Micreceiver.new
  end

  # GET /micreceivers/1/edit
  def edit
  end

  # POST /micreceivers
  # POST /micreceivers.json
  def create
    @micreceiver = Micreceiver.new(micreceiver_params)

    respond_to do |format|
      if @micreceiver.save
        format.html { redirect_to @micreceiver, notice: 'Micreceiver was successfully created.' }
        format.json { render :show, status: :created, location: @micreceiver }
      else
        format.html { render :new }
        format.json { render json: @micreceiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micreceivers/1
  # PATCH/PUT /micreceivers/1.json
  def update
    respond_to do |format|
      if @micreceiver.update(micreceiver_params)
        format.html { redirect_to @micreceiver, notice: 'Micreceiver was successfully updated.' }
        format.json { render :show, status: :ok, location: @micreceiver }
      else
        format.html { render :edit }
        format.json { render json: @micreceiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micreceivers/1
  # DELETE /micreceivers/1.json
  def destroy
    @micreceiver.destroy
    respond_to do |format|
      format.html { redirect_to micreceivers_url, notice: 'Micreceiver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micreceiver
      @micreceiver = Micreceiver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micreceiver_params
      params.require(:micreceiver).permit(:receiver)
    end
end
