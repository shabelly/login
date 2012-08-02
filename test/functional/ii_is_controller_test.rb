require 'test_helper'

class IiIsControllerTest < ActionController::TestCase
  setup do
    @ii_i = ii_is(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ii_is)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ii_i" do
    assert_difference('IiI.count') do
      post :create, :ii_i => @ii_i.attributes
    end

    assert_redirected_to ii_i_path(assigns(:ii_i))
  end

  test "should show ii_i" do
    get :show, :id => @ii_i.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ii_i.to_param
    assert_response :success
  end

  test "should update ii_i" do
    put :update, :id => @ii_i.to_param, :ii_i => @ii_i.attributes
    assert_redirected_to ii_i_path(assigns(:ii_i))
  end

  test "should destroy ii_i" do
    assert_difference('IiI.count', -1) do
      delete :destroy, :id => @ii_i.to_param
    end

    assert_redirected_to ii_is_path
  end
end
