require 'test_helper'

class NsojRadiosControllerTest < ActionController::TestCase
  setup do
    @nsoj_radio = nsoj_radios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nsoj_radios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nsoj_radio" do
    assert_difference('NsojRadio.count') do
      post :create, nsoj_radio: { link: @nsoj_radio.link, title: @nsoj_radio.title }
    end

    assert_redirected_to nsoj_radio_path(assigns(:nsoj_radio))
  end

  test "should show nsoj_radio" do
    get :show, id: @nsoj_radio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nsoj_radio
    assert_response :success
  end

  test "should update nsoj_radio" do
    patch :update, id: @nsoj_radio, nsoj_radio: { link: @nsoj_radio.link, title: @nsoj_radio.title }
    assert_redirected_to nsoj_radio_path(assigns(:nsoj_radio))
  end

  test "should destroy nsoj_radio" do
    assert_difference('NsojRadio.count', -1) do
      delete :destroy, id: @nsoj_radio
    end

    assert_redirected_to nsoj_radios_path
  end
end
