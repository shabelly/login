require 'test_helper'

class FpOdcsControllerTest < ActionController::TestCase
  setup do
    @fp_odc = fp_odcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fp_odcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fp_odc" do
    assert_difference('FpOdc.count') do
      post :create, :fp_odc => @fp_odc.attributes
    end

    assert_redirected_to fp_odc_path(assigns(:fp_odc))
  end

  test "should show fp_odc" do
    get :show, :id => @fp_odc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fp_odc.to_param
    assert_response :success
  end

  test "should update fp_odc" do
    put :update, :id => @fp_odc.to_param, :fp_odc => @fp_odc.attributes
    assert_redirected_to fp_odc_path(assigns(:fp_odc))
  end

  test "should destroy fp_odc" do
    assert_difference('FpOdc.count', -1) do
      delete :destroy, :id => @fp_odc.to_param
    end

    assert_redirected_to fp_odcs_path
  end
end
