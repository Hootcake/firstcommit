require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get newCus" do
    get :newCus
    assert_response :success
  end

  test "should get createCus" do
    get :createCus
    assert_response :success
  end

  test "should get destroyCus" do
    get :destroyCus
    assert_response :success
  end

  test "should get newEmp" do
    get :newEmp
    assert_response :success
  end

  test "should get createEmp" do
    get :createEmp
    assert_response :success
  end

  test "should get destroyEmp" do
    get :destroyEmp
    assert_response :success
  end

end
