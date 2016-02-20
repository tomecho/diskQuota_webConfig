require 'test_helper'

class WebConfigsControllerTest < ActionController::TestCase
  setup do
    @web_config = web_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_config" do
    assert_difference('WebConfig.count') do
      post :create, web_config: { directory: @web_config.directory, old: @web_config.old, scan_interval: @web_config.scan_interval }
    end

    assert_redirected_to web_config_path(assigns(:web_config))
  end

  test "should show web_config" do
    get :show, id: @web_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_config
    assert_response :success
  end

  test "should update web_config" do
    patch :update, id: @web_config, web_config: { directory: @web_config.directory, old: @web_config.old, scan_interval: @web_config.scan_interval }
    assert_redirected_to web_config_path(assigns(:web_config))
  end

  test "should destroy web_config" do
    assert_difference('WebConfig.count', -1) do
      delete :destroy, id: @web_config
    end

    assert_redirected_to web_configs_path
  end
end
