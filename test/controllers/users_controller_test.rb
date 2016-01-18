require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { activated: @user.activated, activated_at: @user.activated_at, activation_digest: @user.activation_digest, address: @user.address, city: @user.city, country: @user.country, email: @user.email, name: @user.name, password: 'secret', password_confirmation: 'secret', phone: @user.phone, pincode: @user.pincode, remember_digest: @user.remember_digest, reset_digest: @user.reset_digest, reset_sent_at: @user.reset_sent_at, state: @user.state }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { activated: @user.activated, activated_at: @user.activated_at, activation_digest: @user.activation_digest, address: @user.address, city: @user.city, country: @user.country, email: @user.email, name: @user.name, password: 'secret', password_confirmation: 'secret', phone: @user.phone, pincode: @user.pincode, remember_digest: @user.remember_digest, reset_digest: @user.reset_digest, reset_sent_at: @user.reset_sent_at, state: @user.state }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
