require 'test_helper'

class TelefonoEmpresaClientesControllerTest < ActionController::TestCase
  setup do
    @telefono_empresa_cliente = telefono_empresa_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefono_empresa_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefono_empresa_cliente" do
    assert_difference('TelefonoEmpresaCliente.count') do
      post :create, :telefono_empresa_cliente => @telefono_empresa_cliente.attributes
    end

    assert_redirected_to telefono_empresa_cliente_path(assigns(:telefono_empresa_cliente))
  end

  test "should show telefono_empresa_cliente" do
    get :show, :id => @telefono_empresa_cliente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @telefono_empresa_cliente.to_param
    assert_response :success
  end

  test "should update telefono_empresa_cliente" do
    put :update, :id => @telefono_empresa_cliente.to_param, :telefono_empresa_cliente => @telefono_empresa_cliente.attributes
    assert_redirected_to telefono_empresa_cliente_path(assigns(:telefono_empresa_cliente))
  end

  test "should destroy telefono_empresa_cliente" do
    assert_difference('TelefonoEmpresaCliente.count', -1) do
      delete :destroy, :id => @telefono_empresa_cliente.to_param
    end

    assert_redirected_to telefono_empresa_clientes_path
  end
end
