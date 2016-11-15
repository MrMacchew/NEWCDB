class InteractivekitsController < ApplicationController
  before_action :set_interactivekit, only: [:show, :edit, :update, :destroy]

  # GET /interactivekits
  # GET /interactivekits.json
  def index
    @interactivekits = Interactivekit.all
  end

  # GET /interactivekits/1
  # GET /interactivekits/1.json
  def show
  end

  # GET /interactivekits/new
  def new
    @interactivekit = Interactivekit.new
  end

  # GET /interactivekits/1/edit
  def edit
  end

  # POST /interactivekits
  # POST /interactivekits.json
  def create
    @interactivekit = Interactivekit.new(interactivekit_params)

    respond_to do |format|
      if @interactivekit.save
        format.html { redirect_to @interactivekit, notice: 'Interactivekit was successfully created.' }
        format.json { render :show, status: :created, location: @interactivekit }
      else
        format.html { render :new }
        format.json { render json: @interactivekit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interactivekits/1
  # PATCH/PUT /interactivekits/1.json
  def update
    respond_to do |format|
      if @interactivekit.update(interactivekit_params)
        format.html { redirect_to @interactivekit, notice: 'Interactivekit was successfully updated.' }
        format.json { render :show, status: :ok, location: @interactivekit }
      else
        format.html { render :edit }
        format.json { render json: @interactivekit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interactivekits/1
  # DELETE /interactivekits/1.json
  def destroy
    @interactivekit.destroy
    respond_to do |format|
      format.html { redirect_to interactivekits_url, notice: 'Interactivekit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interactivekit
      @interactivekit = Interactivekit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interactivekit_params
      params.require(:interactivekit).permit(:serial)
    end
end
