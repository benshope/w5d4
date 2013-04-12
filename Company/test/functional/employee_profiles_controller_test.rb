require 'test_helper'

class EmployeeProfilesControllerTest < ActionController::TestCase
  setup do
    @employee_profile = employee_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_profile" do
    assert_difference('EmployeeProfile.count') do
      post :create, employee_profile: { dob: @employee_profile.dob, favoriteday: @employee_profile.favoriteday, favoritefood: @employee_profile.favoritefood, height: @employee_profile.height, salary: @employee_profile.salary }
    end

    assert_redirected_to employee_profile_path(assigns(:employee_profile))
  end

  test "should show employee_profile" do
    get :show, id: @employee_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_profile
    assert_response :success
  end

  test "should update employee_profile" do
    put :update, id: @employee_profile, employee_profile: { dob: @employee_profile.dob, favoriteday: @employee_profile.favoriteday, favoritefood: @employee_profile.favoritefood, height: @employee_profile.height, salary: @employee_profile.salary }
    assert_redirected_to employee_profile_path(assigns(:employee_profile))
  end

  test "should destroy employee_profile" do
    assert_difference('EmployeeProfile.count', -1) do
      delete :destroy, id: @employee_profile
    end

    assert_redirected_to employee_profiles_path
  end
end
