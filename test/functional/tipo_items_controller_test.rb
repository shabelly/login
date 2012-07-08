require 'test_helper'

class TipoItemsControllerTest < ActionController::TestCase
  setup do
    @tipo_item = tipo_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_item" do
    assert_difference('TipoItem.count') do
      post :create, :tipo_item => @tipo_item.attributes
    end

    assert_redirected_to tipo_item_path(assigns(:tipo_item))
  end

  test "should show tipo_item" do
    get :show, :id => @tipo_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_item.to_param
    assert_response :success
  end

  test "should update tipo_item" do
    put :update, :id => @tipo_item.to_param, :tipo_item => @tipo_item.attributes
    assert_redirected_to tipo_item_path(assigns(:tipo_item))
  end

  test "should destroy tipo_item" do
    assert_difference('TipoItem.count', -1) do
      delete :destroy, :id => @tipo_item.to_param
    end

    assert_redirected_to tipo_items_path
  end
end
