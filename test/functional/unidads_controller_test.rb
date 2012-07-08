require 'test_helper'

class UnidadsControllerTest < ActionController::TestCase
  setup do
    @unidad = unidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unidad" do
    assert_difference('Unidad.count') do
      post :create, :unidad => @unidad.attributes
    end

    assert_redirected_to unidad_path(assigns(:unidad))
  end

  test "should show unidad" do
    get :show, :id => @unidad.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @unidad.to_param
    assert_response :success
  end

  test "should update unidad" do
    put :update, :id => @unidad.to_param, :unidad => @unidad.attributes
    assert_redirected_to unidad_path(assigns(:unidad))
  end

  test "should destroy unidad" do
    assert_difference('Unidad.count', -1) do
      delete :destroy, :id => @unidad.to_param
    end

    assert_redirected_to unidads_path
  end
end
