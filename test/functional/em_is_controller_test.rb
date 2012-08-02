require 'test_helper'

class EmIsControllerTest < ActionController::TestCase
  setup do
    @em_i = em_is(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:em_is)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create em_i" do
    assert_difference('EmI.count') do
      post :create, :em_i => @em_i.attributes
    end

    assert_redirected_to em_i_path(assigns(:em_i))
  end

  test "should show em_i" do
    get :show, :id => @em_i.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @em_i.to_param
    assert_response :success
  end

  test "should update em_i" do
    put :update, :id => @em_i.to_param, :em_i => @em_i.attributes
    assert_redirected_to em_i_path(assigns(:em_i))
  end

  test "should destroy em_i" do
    assert_difference('EmI.count', -1) do
      delete :destroy, :id => @em_i.to_param
    end

    assert_redirected_to em_is_path
  end
end
