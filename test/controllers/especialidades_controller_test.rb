require 'test_helper'

class EspecialidadesControllerTest < ActionController::TestCase
  setup do
    @especialidad = especialidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especialidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especialidad" do
    assert_difference('Especialidad.count') do
      post :create, especialidad: { nombre: @especialidad.nombre }
    end

    assert_redirected_to especialidad_path(assigns(:especialidad))
  end

  test "should show especialidad" do
    get :show, id: @especialidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @especialidad
    assert_response :success
  end

  test "should update especialidad" do
    patch :update, id: @especialidad, especialidad: { nombre: @especialidad.nombre }
    assert_redirected_to especialidad_path(assigns(:especialidad))
  end

  test "should destroy especialidad" do
    assert_difference('Especialidad.count', -1) do
      delete :destroy, id: @especialidad
    end

    assert_redirected_to especialidades_path
  end
end
