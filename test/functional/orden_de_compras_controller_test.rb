require 'test_helper'

class OrdenDeComprasControllerTest < ActionController::TestCase
  setup do
    @orden_de_compra = orden_de_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orden_de_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_de_compra" do
    assert_difference('OrdenDeCompra.count') do
      post :create, :orden_de_compra => @orden_de_compra.attributes
    end

    assert_redirected_to orden_de_compra_path(assigns(:orden_de_compra))
  end

  test "should show orden_de_compra" do
    get :show, :id => @orden_de_compra.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @orden_de_compra.to_param
    assert_response :success
  end

  test "should update orden_de_compra" do
    put :update, :id => @orden_de_compra.to_param, :orden_de_compra => @orden_de_compra.attributes
    assert_redirected_to orden_de_compra_path(assigns(:orden_de_compra))
  end

  test "should destroy orden_de_compra" do
    assert_difference('OrdenDeCompra.count', -1) do
      delete :destroy, :id => @orden_de_compra.to_param
    end

    assert_redirected_to orden_de_compras_path
  end
end
