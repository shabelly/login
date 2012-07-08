require 'test_helper'

class HerramientaControllerTest < ActionController::TestCase
  setup do
    @herramientum = herramienta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:herramienta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create herramientum" do
    assert_difference('Herramientum.count') do
      post :create, :herramientum => @herramientum.attributes
    end

    assert_redirected_to herramientum_path(assigns(:herramientum))
  end

  test "should show herramientum" do
    get :show, :id => @herramientum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @herramientum.to_param
    assert_response :success
  end

  test "should update herramientum" do
    put :update, :id => @herramientum.to_param, :herramientum => @herramientum.attributes
    assert_redirected_to herramientum_path(assigns(:herramientum))
  end

  test "should destroy herramientum" do
    assert_difference('Herramientum.count', -1) do
      delete :destroy, :id => @herramientum.to_param
    end

    assert_redirected_to herramienta_path
  end
end
