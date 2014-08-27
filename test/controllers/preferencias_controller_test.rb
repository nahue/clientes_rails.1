require 'test_helper'

class PreferenciasControllerTest < ActionController::TestCase
  setup do
    @preferencia = preferencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preferencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preferencia" do
    assert_difference('Preferencia.count') do
      post :create, preferencia: { notificar_cliente: @preferencia.notificar_cliente, user_id: @preferencia.user_id }
    end

    assert_redirected_to preferencia_path(assigns(:preferencia))
  end

  test "should show preferencia" do
    get :show, id: @preferencia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preferencia
    assert_response :success
  end

  test "should update preferencia" do
    patch :update, id: @preferencia, preferencia: { notificar_cliente: @preferencia.notificar_cliente, user_id: @preferencia.user_id }
    assert_redirected_to preferencia_path(assigns(:preferencia))
  end

  test "should destroy preferencia" do
    assert_difference('Preferencia.count', -1) do
      delete :destroy, id: @preferencia
    end

    assert_redirected_to preferencias_path
  end
end
