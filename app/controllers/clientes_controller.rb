class ClientesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:index, :new, :edit, :create, :update, :destroy]

  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.where('user_id' => current_user.id)
    respond_to do |format|
      format.html
      format.json
      format.csv { send_data @clientes.to_csv }
      format.xls
    end
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)
    @cliente.user = current_user

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to clientes_path, notice: 'El cliente fue guardado correctamente.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to clientes_path, notice: 'El cliente fue guardado correctamente.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'El cliente fue eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:user_id, :empresa, :nombre, :apellido, :email, :telefono, :otros_datos)
    end
end
