require 'test_helper'

class NsojPostsControllerTest < ActionController::TestCase
  setup do
    @nsoj_post = nsoj_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nsoj_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nsoj_post" do
    assert_difference('NsojPost.count') do
      post :create, nsoj_post: { link: @nsoj_post.link }
    end

    assert_redirected_to nsoj_post_path(assigns(:nsoj_post))
  end

  test "should show nsoj_post" do
    get :show, id: @nsoj_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nsoj_post
    assert_response :success
  end

  test "should update nsoj_post" do
    patch :update, id: @nsoj_post, nsoj_post: { link: @nsoj_post.link }
    assert_redirected_to nsoj_post_path(assigns(:nsoj_post))
  end

  test "should destroy nsoj_post" do
    assert_difference('NsojPost.count', -1) do
      delete :destroy, id: @nsoj_post
    end

    assert_redirected_to nsoj_posts_path
  end
end
