class ProjectorsController < ApplicationController
  before_action :set_projector, only: [:show, :edit, :update, :destroy]

  # GET /projectors
  # GET /projectors.json
  def index
    @projectors = Projector.all
  end

  # GET /projectors/1
  # GET /projectors/1.json
  def show
  end

  # GET /projectors/new
  def new
    @projector = Projector.new
  end

  # GET /projectors/1/edit
  def edit
  end

  # POST /projectors
  # POST /projectors.json
  def create
    @projector = Projector.new(projector_params)

    respond_to do |format|
      if @projector.save
        format.html { redirect_to @projector, notice: 'Projector was successfully created.' }
        format.json { render :show, status: :created, location: @projector }
      else
        format.html { render :new }
        format.json { render json: @projector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectors/1
  # PATCH/PUT /projectors/1.json
  def update
    respond_to do |format|
      if @projector.update(projector_params)
        format.html { redirect_to @projector, notice: 'Projector was successfully updated.' }
        format.json { render :show, status: :ok, location: @projector }
      else
        format.html { render :edit }
        format.json { render json: @projector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectors/1
  # DELETE /projectors/1.json
  def destroy
    @projector.destroy
    respond_to do |format|
      format.html { redirect_to projectors_url, notice: 'Projector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projector
      @projector = Projector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projector_params
      params.require(:projector).permit(:make, :model, :mac, :serial)
    end
end
