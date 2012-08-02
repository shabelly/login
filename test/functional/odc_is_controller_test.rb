require 'test_helper'

class OdcIsControllerTest < ActionController::TestCase
  setup do
    @odc_i = odc_is(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odc_is)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odc_i" do
    assert_difference('OdcI.count') do
      post :create, :odc_i => @odc_i.attributes
    end

    assert_redirected_to odc_i_path(assigns(:odc_i))
  end

  test "should show odc_i" do
    get :show, :id => @odc_i.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @odc_i.to_param
    assert_response :success
  end

  test "should update odc_i" do
    put :update, :id => @odc_i.to_param, :odc_i => @odc_i.attributes
    assert_redirected_to odc_i_path(assigns(:odc_i))
  end

  test "should destroy odc_i" do
    assert_difference('OdcI.count', -1) do
      delete :destroy, :id => @odc_i.to_param
    end

    assert_redirected_to odc_is_path
  end
end
