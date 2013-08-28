require 'test_helper'

class DamagesControllerTest < ActionController::TestCase
  setup do
    @damage = damages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:damages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create damage" do
    assert_difference('Damage.count') do
      post :create, damage: { CNIC: @damage.CNIC, family: @damage.family, father_name: @damage.father_name, name: @damage.name, tehsil: @damage.tehsil, village: @damage.village }
    end

    assert_redirected_to damage_path(assigns(:damage))
  end

  test "should show damage" do
    get :show, id: @damage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @damage
    assert_response :success
  end

  test "should update damage" do
    patch :update, id: @damage, damage: { CNIC: @damage.CNIC, family: @damage.family, father_name: @damage.father_name, name: @damage.name, tehsil: @damage.tehsil, village: @damage.village }
    assert_redirected_to damage_path(assigns(:damage))
  end

  test "should destroy damage" do
    assert_difference('Damage.count', -1) do
      delete :destroy, id: @damage
    end

    assert_redirected_to damages_path
  end
end
