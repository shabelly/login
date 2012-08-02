require 'test_helper'

class RequisicionsControllerTest < ActionController::TestCase
  setup do
    @requisicion = requisicions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requisicions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requisicion" do
    assert_difference('Requisicion.count') do
      post :create, :requisicion => @requisicion.attributes
    end

    assert_redirected_to requisicion_path(assigns(:requisicion))
  end

  test "should show requisicion" do
    get :show, :id => @requisicion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @requisicion.to_param
    assert_response :success
  end

  test "should update requisicion" do
    put :update, :id => @requisicion.to_param, :requisicion => @requisicion.attributes
    assert_redirected_to requisicion_path(assigns(:requisicion))
  end

  test "should destroy requisicion" do
    assert_difference('Requisicion.count', -1) do
      delete :destroy, :id => @requisicion.to_param
    end

    assert_redirected_to requisicions_path
  end
end
