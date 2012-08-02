require 'test_helper'

class SalidaMaterialsControllerTest < ActionController::TestCase
  setup do
    @salida_material = salida_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salida_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salida_material" do
    assert_difference('SalidaMaterial.count') do
      post :create, :salida_material => @salida_material.attributes
    end

    assert_redirected_to salida_material_path(assigns(:salida_material))
  end

  test "should show salida_material" do
    get :show, :id => @salida_material.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @salida_material.to_param
    assert_response :success
  end

  test "should update salida_material" do
    put :update, :id => @salida_material.to_param, :salida_material => @salida_material.attributes
    assert_redirected_to salida_material_path(assigns(:salida_material))
  end

  test "should destroy salida_material" do
    assert_difference('SalidaMaterial.count', -1) do
      delete :destroy, :id => @salida_material.to_param
    end

    assert_redirected_to salida_materials_path
  end
end
