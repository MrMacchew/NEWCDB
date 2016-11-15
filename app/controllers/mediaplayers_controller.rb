class MediaplayersController < ApplicationController
  before_action :set_mediaplayer, only: [:show, :edit, :update, :destroy]

  # GET /mediaplayers
  # GET /mediaplayers.json
  def index
    @mediaplayers = Mediaplayer.all
  end

  # GET /mediaplayers/1
  # GET /mediaplayers/1.json
  def show
  end

  # GET /mediaplayers/new
  def new
    @mediaplayer = Mediaplayer.new
  end

  # GET /mediaplayers/1/edit
  def edit
  end

  # POST /mediaplayers
  # POST /mediaplayers.json
  def create
    @mediaplayer = Mediaplayer.new(mediaplayer_params)

    respond_to do |format|
      if @mediaplayer.save
        format.html { redirect_to @mediaplayer, notice: 'Mediaplayer was successfully created.' }
        format.json { render :show, status: :created, location: @mediaplayer }
      else
        format.html { render :new }
        format.json { render json: @mediaplayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mediaplayers/1
  # PATCH/PUT /mediaplayers/1.json
  def update
    respond_to do |format|
      if @mediaplayer.update(mediaplayer_params)
        format.html { redirect_to @mediaplayer, notice: 'Mediaplayer was successfully updated.' }
        format.json { render :show, status: :ok, location: @mediaplayer }
      else
        format.html { render :edit }
        format.json { render json: @mediaplayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mediaplayers/1
  # DELETE /mediaplayers/1.json
  def destroy
    @mediaplayer.destroy
    respond_to do |format|
      format.html { redirect_to mediaplayers_url, notice: 'Mediaplayer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mediaplayer
      @mediaplayer = Mediaplayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mediaplayer_params
      params.require(:mediaplayer).permit(:type, :make, :serial)
    end
end
