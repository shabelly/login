require 'test_helper'

class EntradaMaterialsControllerTest < ActionController::TestCase
  setup do
    @entrada_material = entrada_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrada_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrada_material" do
    assert_difference('EntradaMaterial.count') do
      post :create, :entrada_material => @entrada_material.attributes
    end

    assert_redirected_to entrada_material_path(assigns(:entrada_material))
  end

  test "should show entrada_material" do
    get :show, :id => @entrada_material.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @entrada_material.to_param
    assert_response :success
  end

  test "should update entrada_material" do
    put :update, :id => @entrada_material.to_param, :entrada_material => @entrada_material.attributes
    assert_redirected_to entrada_material_path(assigns(:entrada_material))
  end

  test "should destroy entrada_material" do
    assert_difference('EntradaMaterial.count', -1) do
      delete :destroy, :id => @entrada_material.to_param
    end

    assert_redirected_to entrada_materials_path
  end
end
