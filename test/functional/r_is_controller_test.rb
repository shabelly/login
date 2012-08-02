require 'test_helper'

class RIsControllerTest < ActionController::TestCase
  setup do
    @r_i = r_is(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_is)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_i" do
    assert_difference('RI.count') do
      post :create, :r_i => @r_i.attributes
    end

    assert_redirected_to r_i_path(assigns(:r_i))
  end

  test "should show r_i" do
    get :show, :id => @r_i.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @r_i.to_param
    assert_response :success
  end

  test "should update r_i" do
    put :update, :id => @r_i.to_param, :r_i => @r_i.attributes
    assert_redirected_to r_i_path(assigns(:r_i))
  end

  test "should destroy r_i" do
    assert_difference('RI.count', -1) do
      delete :destroy, :id => @r_i.to_param
    end

    assert_redirected_to r_is_path
  end
end
