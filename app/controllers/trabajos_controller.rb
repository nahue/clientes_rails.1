class TrabajosController < ApplicationController
  before_action :set_trabajo, only: [:show, :edit, :update, :destroy]
  before_action :set_cliente, only: [:index, :show, :create, :update, :destroy]
  # GET /trabajos
  # GET /trabajos.json
  def index
    @cliente = Cliente.find(params[:cliente_id])
    @trabajos = Trabajo.where('cliente_id = ?', @cliente.id)
  end

  # GET /trabajos/1
  # GET /trabajos/1.json
  def show
  end

  # GET /trabajos/new
  def new
    @trabajo = Trabajo.new
  end

  # GET /trabajos/1/edit
  def edit
  end

  # POST /trabajos
  # POST /trabajos.json
  def create
    @trabajo = Trabajo.new(trabajo_params)
    @trabajo.cliente = @cliente

    respond_to do |format|
      if @trabajo.save
        format.html { redirect_to cliente_trabajos_path(@cliente), notice: 'Trabajo was successfully created.' }
        format.json { render :show, status: :created, location: @trabajo }
      else
        format.html { render :new }
        format.json { render json: @trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabajos/1
  # PATCH/PUT /trabajos/1.json
  def update
    respond_to do |format|
      if @trabajo.update(trabajo_params)
        format.html { redirect_to cliente_trabajo_path(@cliente, @trabajo), notice: 'Trabajo was successfully updated.' }
        format.json { render :show, status: :ok, location: cliente_trabajo_path(@cliente, @trabajo) }
      else
        format.html { render :edit }
        format.json { render json: @trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajos/1
  # DELETE /trabajos/1.json
  def destroy
    @trabajo.destroy
    respond_to do |format|
      format.html { redirect_to cliente_trabajos_url(@cliente), notice: 'Trabajo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabajo
      @trabajo = Trabajo.find(params[:id])
    end

    def set_cliente
      @cliente = Cliente.find(params[:cliente_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabajo_params
      params.require(:trabajo).permit(:cliente_id, :descripcion, :tipo_trabajo_id, :fecha, :valor)
    end
end
