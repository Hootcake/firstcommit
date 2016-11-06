require 'test_helper'

class InstructorsControllerTest < ActionController::TestCase
  setup do
    @instructor = instructors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instructors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instructor" do
    assert_difference('Instructor.count') do
      post :create, instructor: { PPS: @instructor.PPS, address: @instructor.address, certification: @instructor.certification, date_of_birth: @instructor.date_of_birth, image: @instructor.image, manager: @instructor.manager, name: @instructor.name, password: @instructor.password, phone_number: @instructor.phone_number, surname: @instructor.surname, username: @instructor.username }
    end

    assert_redirected_to instructor_path(assigns(:instructor))
  end

  test "should show instructor" do
    get :show, id: @instructor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instructor
    assert_response :success
  end

  test "should update instructor" do
    patch :update, id: @instructor, instructor: { PPS: @instructor.PPS, address: @instructor.address, certification: @instructor.certification, date_of_birth: @instructor.date_of_birth, image: @instructor.image, manager: @instructor.manager, name: @instructor.name, password: @instructor.password, phone_number: @instructor.phone_number, surname: @instructor.surname, username: @instructor.username }
    assert_redirected_to instructor_path(assigns(:instructor))
  end

  test "should destroy instructor" do
    assert_difference('Instructor.count', -1) do
      delete :destroy, id: @instructor
    end

    assert_redirected_to instructors_path
  end
end
