require 'test_helper'

class TrabajosControllerTest < ActionController::TestCase
  setup do
    @trabajo = trabajos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trabajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trabajo" do
    assert_difference('Trabajo.count') do
      post :create, trabajo: { cliente_id: @trabajo.cliente_id, descripcion: @trabajo.descripcion, fecha: @trabajo.fecha, tipo_trabajo_id: @trabajo.tipo_trabajo_id, valor: @trabajo.valor }
    end

    assert_redirected_to trabajo_path(assigns(:trabajo))
  end

  test "should show trabajo" do
    get :show, id: @trabajo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trabajo
    assert_response :success
  end

  test "should update trabajo" do
    patch :update, id: @trabajo, trabajo: { cliente_id: @trabajo.cliente_id, descripcion: @trabajo.descripcion, fecha: @trabajo.fecha, tipo_trabajo_id: @trabajo.tipo_trabajo_id, valor: @trabajo.valor }
    assert_redirected_to trabajo_path(assigns(:trabajo))
  end

  test "should destroy trabajo" do
    assert_difference('Trabajo.count', -1) do
      delete :destroy, id: @trabajo
    end

    assert_redirected_to trabajos_path
  end
end
