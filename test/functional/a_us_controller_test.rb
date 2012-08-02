require 'test_helper'

class AUsControllerTest < ActionController::TestCase
  setup do
    @a_u = a_us(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_us)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_u" do
    assert_difference('AU.count') do
      post :create, :a_u => @a_u.attributes
    end

    assert_redirected_to a_u_path(assigns(:a_u))
  end

  test "should show a_u" do
    get :show, :id => @a_u.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @a_u.to_param
    assert_response :success
  end

  test "should update a_u" do
    put :update, :id => @a_u.to_param, :a_u => @a_u.attributes
    assert_redirected_to a_u_path(assigns(:a_u))
  end

  test "should destroy a_u" do
    assert_difference('AU.count', -1) do
      delete :destroy, :id => @a_u.to_param
    end

    assert_redirected_to a_us_path
  end
end
