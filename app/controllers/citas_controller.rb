class CitasController < ApplicationController
  before_action :set_cita, only: [:show, :edit, :update, :destroy]
  

  # GET /citas
  # GET /citas.json
  def index
    @citas = Cita.all
  end

  # GET /citas/1
  # GET /citas/1.json
  def show
    render layout:false
  end

  # GET /citas/new
  def new
    @cita = Cita.new
    render layout:false
  end

  # GET /citas/1/edit
  def edit
    render layout:false
  end

  # POST /citas
  # POST /citas.json
  def create
    @cita = Cita.new(cita_params)

    respond_to do |format|
      if @cita.save
        format.html { redirect_to citas_path, notice: 'Cita was successfully created.' }
        format.json { render :index, status: :created, location: @cita }
      else
        format.html { render :new }
        format.json { render json: @cita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citas/1
  # PATCH/PUT /citas/1.json
  def update
    respond_to do |format|
      if @cita.update(cita_params)
        format.html { redirect_to citas_path, notice: 'Cita was successfully updated.' }
        format.json { render :index, status: :ok, location: @cita }
      else
        format.html { render :edit }
        format.json { render json: @cita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citas/1
  # DELETE /citas/1.json
  def destroy
    @cita.destroy
    respond_to do |format|
      format.html { redirect_to citas_url, notice: 'Cita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #calendario de citas
  def calendario 
    @citas = Cita.all
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cita
      @cita = Cita.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cita_params
      params.require(:cita).permit(:paciente_id, :especialista_id, :fecha)
    end
end
