require 'test_helper'

class TelefonoPersonasControllerTest < ActionController::TestCase
  setup do
    @telefono_persona = telefono_personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefono_personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefono_persona" do
    assert_difference('TelefonoPersona.count') do
      post :create, :telefono_persona => @telefono_persona.attributes
    end

    assert_redirected_to telefono_persona_path(assigns(:telefono_persona))
  end

  test "should show telefono_persona" do
    get :show, :id => @telefono_persona.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @telefono_persona.to_param
    assert_response :success
  end

  test "should update telefono_persona" do
    put :update, :id => @telefono_persona.to_param, :telefono_persona => @telefono_persona.attributes
    assert_redirected_to telefono_persona_path(assigns(:telefono_persona))
  end

  test "should destroy telefono_persona" do
    assert_difference('TelefonoPersona.count', -1) do
      delete :destroy, :id => @telefono_persona.to_param
    end

    assert_redirected_to telefono_personas_path
  end
end
