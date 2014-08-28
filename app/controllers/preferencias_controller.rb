class PreferenciasController < ApplicationController
  before_action :set_preferencia, only: [:show, :edit, :update, :destroy]

  # GET /preferencias
  # GET /preferencias.json
  def index
    @preferencias = Preferencia.all
  end

  # GET /preferencias/1
  # GET /preferencias/1.json
  def show
  end

  # GET /preferencias/new
  def new
    @preferencia = Preferencia.new
  end

  # GET /preferencias/1/edit
  def edit
  end

  # POST /preferencias
  # POST /preferencias.json
  def create
    @preferencia = Preferencia.new(preferencia_params)

    respond_to do |format|
      if @preferencia.save
        format.html { redirect_to @preferencia, notice: 'Preferencia was successfully created.' }
        format.json { render :show, status: :created, location: @preferencia }
      else
        format.html { render :new }
        format.json { render json: @preferencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preferencias/1
  # PATCH/PUT /preferencias/1.json
  def update

    respond_to do |format|
      if @preferencia.update(preferencia_params)
        format.html { redirect_to edit_user_preferencia_path(current_user), notice: 'Preferencia was successfully updated.' }
        format.json { render :show, status: :ok, location: @preferencia }
      else
        format.html { render :edit }
        format.json { render json: @preferencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preferencias/1
  # DELETE /preferencias/1.json
  def destroy
    @preferencia.destroy
    respond_to do |format|
      format.html { redirect_to preferencias_url, notice: 'Preferencia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preferencia
      @preferencia = Preferencia.where(user: params[:user_id]).first_or_create
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preferencia_params
      params.require(:preferencia).permit(:notificar_cliente, :user_id, :titulo, :logo)
    end
end
