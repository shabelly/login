require 'test_helper'

class ICsControllerTest < ActionController::TestCase
  setup do
    @i_c = i_cs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:i_cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create i_c" do
    assert_difference('IC.count') do
      post :create, :i_c => @i_c.attributes
    end

    assert_redirected_to i_c_path(assigns(:i_c))
  end

  test "should show i_c" do
    get :show, :id => @i_c.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @i_c.to_param
    assert_response :success
  end

  test "should update i_c" do
    put :update, :id => @i_c.to_param, :i_c => @i_c.attributes
    assert_redirected_to i_c_path(assigns(:i_c))
  end

  test "should destroy i_c" do
    assert_difference('IC.count', -1) do
      delete :destroy, :id => @i_c.to_param
    end

    assert_redirected_to i_cs_path
  end
end
