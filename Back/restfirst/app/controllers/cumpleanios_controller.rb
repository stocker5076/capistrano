class CumpleaniosController < ApplicationController
  before_action :set_cumpleanio, only: [:show, :edit, :update, :destroy]

  # GET /cumpleanios
  # GET /cumpleanios.json
  def index
    @cumpleanios = Cumpleanio.all
  end

  # GET /cumpleanios/1
  # GET /cumpleanios/1.json
  def show
  end

  # GET /cumpleanios/new
  def new
    @cumpleanio = Cumpleanio.new
  end

  # GET /cumpleanios/1/edit
  def edit
  end

  # POST /cumpleanios
  # POST /cumpleanios.json
  def create
    @cumpleanio = Cumpleanio.new(cumpleanio_params)

    respond_to do |format|
      if @cumpleanio.save
        format.html { redirect_to @cumpleanio, notice: 'Cumpleanio was successfully created.' }
        format.json { render :show, status: :created, location: @cumpleanio }
      else
        format.html { render :new }
        format.json { render json: @cumpleanio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cumpleanios/1
  # PATCH/PUT /cumpleanios/1.json
  def update
    respond_to do |format|
      if @cumpleanio.update(cumpleanio_params)
        format.html { redirect_to @cumpleanio, notice: 'Cumpleanio was successfully updated.' }
        format.json { render :show, status: :ok, location: @cumpleanio }
      else
        format.html { render :edit }
        format.json { render json: @cumpleanio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cumpleanios/1
  # DELETE /cumpleanios/1.json
  def destroy
    @cumpleanio.destroy
    respond_to do |format|
      format.html { redirect_to cumpleanios_url, notice: 'Cumpleanio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cumpleanio
      @cumpleanio = Cumpleanio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cumpleanio_params
      params.require(:cumpleanio).permit(:fecha, :nombre)
    end
end
