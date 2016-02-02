require 'test_helper'

class HomeAssistantsControllerTest < ActionController::TestCase
  setup do
    @home_assistant = home_assistants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_assistants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_assistant" do
    assert_difference('HomeAssistant.count') do
      post :create, home_assistant: {  }
    end

    assert_redirected_to home_assistant_path(assigns(:home_assistant))
  end

  test "should show home_assistant" do
    get :show, id: @home_assistant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_assistant
    assert_response :success
  end

  test "should update home_assistant" do
    patch :update, id: @home_assistant, home_assistant: {  }
    assert_redirected_to home_assistant_path(assigns(:home_assistant))
  end

  test "should destroy home_assistant" do
    assert_difference('HomeAssistant.count', -1) do
      delete :destroy, id: @home_assistant
    end

    assert_redirected_to home_assistants_path
  end
end
