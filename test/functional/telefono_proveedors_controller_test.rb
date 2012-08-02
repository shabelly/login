require 'test_helper'

class TelefonoProveedorsControllerTest < ActionController::TestCase
  setup do
    @telefono_proveedor = telefono_proveedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefono_proveedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefono_proveedor" do
    assert_difference('TelefonoProveedor.count') do
      post :create, :telefono_proveedor => @telefono_proveedor.attributes
    end

    assert_redirected_to telefono_proveedor_path(assigns(:telefono_proveedor))
  end

  test "should show telefono_proveedor" do
    get :show, :id => @telefono_proveedor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @telefono_proveedor.to_param
    assert_response :success
  end

  test "should update telefono_proveedor" do
    put :update, :id => @telefono_proveedor.to_param, :telefono_proveedor => @telefono_proveedor.attributes
    assert_redirected_to telefono_proveedor_path(assigns(:telefono_proveedor))
  end

  test "should destroy telefono_proveedor" do
    assert_difference('TelefonoProveedor.count', -1) do
      delete :destroy, :id => @telefono_proveedor.to_param
    end

    assert_redirected_to telefono_proveedors_path
  end
end
