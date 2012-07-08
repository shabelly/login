require 'test_helper'

class ModelosControllerTest < ActionController::TestCase
  setup do
    @modelo = modelos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modelo" do
    assert_difference('Modelo.count') do
      post :create, :modelo => @modelo.attributes
    end

    assert_redirected_to modelo_path(assigns(:modelo))
  end

  test "should show modelo" do
    get :show, :id => @modelo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @modelo.to_param
    assert_response :success
  end

  test "should update modelo" do
    put :update, :id => @modelo.to_param, :modelo => @modelo.attributes
    assert_redirected_to modelo_path(assigns(:modelo))
  end

  test "should destroy modelo" do
    assert_difference('Modelo.count', -1) do
      delete :destroy, :id => @modelo.to_param
    end

    assert_redirected_to modelos_path
  end
end
