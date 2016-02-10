require 'test_helper'

class RedireccionControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get mostrar" do
    get :mostrar
    assert_response :success
  end

  test "should get irA" do
    get :irA
    assert_response :success
  end

end
