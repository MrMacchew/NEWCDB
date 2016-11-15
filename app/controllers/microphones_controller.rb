class MicrophonesController < ApplicationController
  before_action :set_microphone, only: [:show, :edit, :update, :destroy]

  # GET /microphones
  # GET /microphones.json
  def index
    @microphones = Microphone.all
  end

  # GET /microphones/1
  # GET /microphones/1.json
  def show
  end

  # GET /microphones/new
  def new
    @microphone = Microphone.new
  end

  # GET /microphones/1/edit
  def edit
  end

  # POST /microphones
  # POST /microphones.json
  def create
    @microphone = Microphone.new(microphone_params)

    respond_to do |format|
      if @microphone.save
        format.html { redirect_to @microphone, notice: 'Microphone was successfully created.' }
        format.json { render :show, status: :created, location: @microphone }
      else
        format.html { render :new }
        format.json { render json: @microphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microphones/1
  # PATCH/PUT /microphones/1.json
  def update
    respond_to do |format|
      if @microphone.update(microphone_params)
        format.html { redirect_to @microphone, notice: 'Microphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @microphone }
      else
        format.html { render :edit }
        format.json { render json: @microphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microphones/1
  # DELETE /microphones/1.json
  def destroy
    @microphone.destroy
    respond_to do |format|
      format.html { redirect_to microphones_url, notice: 'Microphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microphone
      @microphone = Microphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microphone_params
      params.require(:microphone).permit(:make, :serial)
    end
end
