require 'test_helper'

class SlantsControllerTest < ActionController::TestCase
  setup do
    @slant = slants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slant" do
    assert_difference('Slant.count') do
      post :create, slant: { string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string }
    end

    assert_redirected_to slant_path(assigns(:slant))
  end

  test "should show slant" do
    get :show, id: @slant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slant
    assert_response :success
  end

  test "should update slant" do
    patch :update, id: @slant, slant: { string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string, string: @slant.string }
    assert_redirected_to slant_path(assigns(:slant))
  end

  test "should destroy slant" do
    assert_difference('Slant.count', -1) do
      delete :destroy, id: @slant
    end

    assert_redirected_to slants_path
  end
end
