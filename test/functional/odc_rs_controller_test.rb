require 'test_helper'

class OdcRsControllerTest < ActionController::TestCase
  setup do
    @odc_r = odc_rs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odc_rs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odc_r" do
    assert_difference('OdcR.count') do
      post :create, :odc_r => @odc_r.attributes
    end

    assert_redirected_to odc_r_path(assigns(:odc_r))
  end

  test "should show odc_r" do
    get :show, :id => @odc_r.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @odc_r.to_param
    assert_response :success
  end

  test "should update odc_r" do
    put :update, :id => @odc_r.to_param, :odc_r => @odc_r.attributes
    assert_redirected_to odc_r_path(assigns(:odc_r))
  end

  test "should destroy odc_r" do
    assert_difference('OdcR.count', -1) do
      delete :destroy, :id => @odc_r.to_param
    end

    assert_redirected_to odc_rs_path
  end
end
