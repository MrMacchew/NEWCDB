class DoccamsController < ApplicationController
  before_action :set_doccam, only: [:show, :edit, :update, :destroy]

  # GET /doccams
  # GET /doccams.json
  def index
    @doccams = Doccam.all
  end

  # GET /doccams/1
  # GET /doccams/1.json
  def show
  end

  # GET /doccams/new
  def new
    @doccam = Doccam.new
  end

  # GET /doccams/1/edit
  def edit
  end

  # POST /doccams
  # POST /doccams.json
  def create
    @doccam = Doccam.new(doccam_params)

    respond_to do |format|
      if @doccam.save
        format.html { redirect_to @doccam, notice: 'Doccam was successfully created.' }
        format.json { render :show, status: :created, location: @doccam }
      else
        format.html { render :new }
        format.json { render json: @doccam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doccams/1
  # PATCH/PUT /doccams/1.json
  def update
    respond_to do |format|
      if @doccam.update(doccam_params)
        format.html { redirect_to @doccam, notice: 'Doccam was successfully updated.' }
        format.json { render :show, status: :ok, location: @doccam }
      else
        format.html { render :edit }
        format.json { render json: @doccam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doccams/1
  # DELETE /doccams/1.json
  def destroy
    @doccam.destroy
    respond_to do |format|
      format.html { redirect_to doccams_url, notice: 'Doccam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doccam
      @doccam = Doccam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doccam_params
      params.require(:doccam).permit(:make, :model, :serial, :wtag)
    end
end
