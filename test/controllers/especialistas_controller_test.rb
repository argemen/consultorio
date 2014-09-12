require 'test_helper'

class EspecialistasControllerTest < ActionController::TestCase
  setup do
    @especialista = especialista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especialista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especialista" do
    assert_difference('Especialista.count') do
      post :create, especialista: { apellidos: @especialista.apellidos, cedula: @especialista.cedula, email: @especialista.email, especialidad_id: @especialista.especialidad_id, nombres: @especialista.nombres, telefono: @especialista.telefono }
    end

    assert_redirected_to especialista_path(assigns(:especialista))
  end

  test "should show especialista" do
    get :show, id: @especialista
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @especialista
    assert_response :success
  end

  test "should update especialista" do
    patch :update, id: @especialista, especialista: { apellidos: @especialista.apellidos, cedula: @especialista.cedula, email: @especialista.email, especialidad_id: @especialista.especialidad_id, nombres: @especialista.nombres, telefono: @especialista.telefono }
    assert_redirected_to especialista_path(assigns(:especialista))
  end

  test "should destroy especialista" do
    assert_difference('Especialista.count', -1) do
      delete :destroy, id: @especialista
    end

    assert_redirected_to especialista_index_path
  end
end
