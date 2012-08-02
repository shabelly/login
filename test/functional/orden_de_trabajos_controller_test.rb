require 'test_helper'

class OrdenDeTrabajosControllerTest < ActionController::TestCase
  setup do
    @orden_de_trabajo = orden_de_trabajos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orden_de_trabajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_de_trabajo" do
    assert_difference('OrdenDeTrabajo.count') do
      post :create, :orden_de_trabajo => @orden_de_trabajo.attributes
    end

    assert_redirected_to orden_de_trabajo_path(assigns(:orden_de_trabajo))
  end

  test "should show orden_de_trabajo" do
    get :show, :id => @orden_de_trabajo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @orden_de_trabajo.to_param
    assert_response :success
  end

  test "should update orden_de_trabajo" do
    put :update, :id => @orden_de_trabajo.to_param, :orden_de_trabajo => @orden_de_trabajo.attributes
    assert_redirected_to orden_de_trabajo_path(assigns(:orden_de_trabajo))
  end

  test "should destroy orden_de_trabajo" do
    assert_difference('OrdenDeTrabajo.count', -1) do
      delete :destroy, :id => @orden_de_trabajo.to_param
    end

    assert_redirected_to orden_de_trabajos_path
  end
end
