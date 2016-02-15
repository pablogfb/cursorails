require 'test_helper'

class DiscoControllerTest < ActionController::TestCase
  test "should get nombre:string" do
    get :nombre:string
    assert_response :success
  end

  test "should get artista:string" do
    get :artista:string
    assert_response :success
  end

  test "should get anio:integer" do
    get :anio:integer
    assert_response :success
  end

end
