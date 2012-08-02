require 'test_helper'

class ISmsControllerTest < ActionController::TestCase
  setup do
    @i_sm = i_sms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:i_sms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create i_sm" do
    assert_difference('ISm.count') do
      post :create, :i_sm => @i_sm.attributes
    end

    assert_redirected_to i_sm_path(assigns(:i_sm))
  end

  test "should show i_sm" do
    get :show, :id => @i_sm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @i_sm.to_param
    assert_response :success
  end

  test "should update i_sm" do
    put :update, :id => @i_sm.to_param, :i_sm => @i_sm.attributes
    assert_redirected_to i_sm_path(assigns(:i_sm))
  end

  test "should destroy i_sm" do
    assert_difference('ISm.count', -1) do
      delete :destroy, :id => @i_sm.to_param
    end

    assert_redirected_to i_sms_path
  end
end
