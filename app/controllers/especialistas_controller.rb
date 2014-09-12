class EspecialistasController < ApplicationController
  before_action :set_especialista, only: [:show, :edit, :update, :destroy]

  # GET /especialista
  # GET /especialista.json
  def index
    @especialistas = Especialista.all
  end

  # GET /especialista/1
  # GET /especialista/1.json
  def show
    render layout:false
  end

  # GET /especialista/new
  def new
    @especialista = Especialista.new
    render layout:false
  end

  # GET /especialista/1/edit
  def edit
    render layout:false
  end

  # POST /especialista
  # POST /especialista.json
  def create
    @especialista = Especialista.new(especialista_params)

    respond_to do |format|
      if @especialista.save
        format.html { redirect_to especialistas_path, notice: 'Especialista was successfully created.' }
        format.json { render :index, status: :created, location: @especialista }
      else
        format.html { render :new }
        format.json { render json: @especialista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especialista/1
  # PATCH/PUT /especialista/1.json
  def update
    respond_to do |format|
      if @especialista.update(especialista_params)
        format.html { redirect_to especialistas_path, notice: 'Especialista was successfully updated.' }
        format.json { render :index, status: :ok, location: @especialista }
      else
        format.html { render :edit }
        format.json { render json: @especialista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialista/1
  # DELETE /especialista/1.json
  def destroy
    @especialista.destroy
    respond_to do |format|
      format.html { redirect_to especialistas_url, notice: 'Especialista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialista
      @especialista = Especialista.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especialista_params
      params.require(:especialista).permit(:especialidad_id, :cedula, :nombres, :apellidos, :email, :telefono)
    end
end
