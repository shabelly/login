require 'test_helper'

class InstanciaItemsControllerTest < ActionController::TestCase
  setup do
    @instancia_item = instancia_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instancia_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instancia_item" do
    assert_difference('InstanciaItem.count') do
      post :create, :instancia_item => @instancia_item.attributes
    end

    assert_redirected_to instancia_item_path(assigns(:instancia_item))
  end

  test "should show instancia_item" do
    get :show, :id => @instancia_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @instancia_item.to_param
    assert_response :success
  end

  test "should update instancia_item" do
    put :update, :id => @instancia_item.to_param, :instancia_item => @instancia_item.attributes
    assert_redirected_to instancia_item_path(assigns(:instancia_item))
  end

  test "should destroy instancia_item" do
    assert_difference('InstanciaItem.count', -1) do
      delete :destroy, :id => @instancia_item.to_param
    end

    assert_redirected_to instancia_items_path
  end
end
