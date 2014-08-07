class TipoTrabajosController < ApplicationController
  before_action :set_tipo_trabajo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_trabajos
  # GET /tipo_trabajos.json
  def index
    @tipo_trabajos = TipoTrabajo.all
  end

  # GET /tipo_trabajos/1
  # GET /tipo_trabajos/1.json
  def show
  end

  # GET /tipo_trabajos/new
  def new
    @tipo_trabajo = TipoTrabajo.new
  end

  # GET /tipo_trabajos/1/edit
  def edit
  end

  # POST /tipo_trabajos
  # POST /tipo_trabajos.json
  def create
    @tipo_trabajo = TipoTrabajo.new(tipo_trabajo_params)

    respond_to do |format|
      if @tipo_trabajo.save
        format.html { redirect_to @tipo_trabajo, notice: 'Tipo trabajo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_trabajo }
      else
        format.html { render :new }
        format.json { render json: @tipo_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_trabajos/1
  # PATCH/PUT /tipo_trabajos/1.json
  def update
    respond_to do |format|
      if @tipo_trabajo.update(tipo_trabajo_params)
        format.html { redirect_to @tipo_trabajo, notice: 'Tipo trabajo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_trabajo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_trabajos/1
  # DELETE /tipo_trabajos/1.json
  def destroy
    @tipo_trabajo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_trabajos_url, notice: 'Tipo trabajo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_trabajo
      @tipo_trabajo = TipoTrabajo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_trabajo_params
      params.require(:tipo_trabajo).permit(:nombre)
    end
end
