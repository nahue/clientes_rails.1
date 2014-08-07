require 'test_helper'

class TipoTrabajosControllerTest < ActionController::TestCase
  setup do
    @tipo_trabajo = tipo_trabajos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_trabajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_trabajo" do
    assert_difference('TipoTrabajo.count') do
      post :create, tipo_trabajo: { nombre: @tipo_trabajo.nombre }
    end

    assert_redirected_to tipo_trabajo_path(assigns(:tipo_trabajo))
  end

  test "should show tipo_trabajo" do
    get :show, id: @tipo_trabajo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_trabajo
    assert_response :success
  end

  test "should update tipo_trabajo" do
    patch :update, id: @tipo_trabajo, tipo_trabajo: { nombre: @tipo_trabajo.nombre }
    assert_redirected_to tipo_trabajo_path(assigns(:tipo_trabajo))
  end

  test "should destroy tipo_trabajo" do
    assert_difference('TipoTrabajo.count', -1) do
      delete :destroy, id: @tipo_trabajo
    end

    assert_redirected_to tipo_trabajos_path
  end
end
