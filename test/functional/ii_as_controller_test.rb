require 'test_helper'

class IiAsControllerTest < ActionController::TestCase
  setup do
    @ii_a = ii_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ii_as)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ii_a" do
    assert_difference('IiA.count') do
      post :create, :ii_a => @ii_a.attributes
    end

    assert_redirected_to ii_a_path(assigns(:ii_a))
  end

  test "should show ii_a" do
    get :show, :id => @ii_a.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ii_a.to_param
    assert_response :success
  end

  test "should update ii_a" do
    put :update, :id => @ii_a.to_param, :ii_a => @ii_a.attributes
    assert_redirected_to ii_a_path(assigns(:ii_a))
  end

  test "should destroy ii_a" do
    assert_difference('IiA.count', -1) do
      delete :destroy, :id => @ii_a.to_param
    end

    assert_redirected_to ii_as_path
  end
end
