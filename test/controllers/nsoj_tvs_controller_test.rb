require 'test_helper'

class NsojTvsControllerTest < ActionController::TestCase
  setup do
    @nsoj_tv = nsoj_tvs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nsoj_tvs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nsoj_tv" do
    assert_difference('NsojTv.count') do
      post :create, nsoj_tv: { link: @nsoj_tv.link, nsoj_tv_category_id: @nsoj_tv.nsoj_tv_category_id, title: @nsoj_tv.title }
    end

    assert_redirected_to nsoj_tv_path(assigns(:nsoj_tv))
  end

  test "should show nsoj_tv" do
    get :show, id: @nsoj_tv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nsoj_tv
    assert_response :success
  end

  test "should update nsoj_tv" do
    patch :update, id: @nsoj_tv, nsoj_tv: { link: @nsoj_tv.link, nsoj_tv_category_id: @nsoj_tv.nsoj_tv_category_id, title: @nsoj_tv.title }
    assert_redirected_to nsoj_tv_path(assigns(:nsoj_tv))
  end

  test "should destroy nsoj_tv" do
    assert_difference('NsojTv.count', -1) do
      delete :destroy, id: @nsoj_tv
    end

    assert_redirected_to nsoj_tvs_path
  end
end
