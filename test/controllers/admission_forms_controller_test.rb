require 'test_helper'

class AdmissionFormsControllerTest < ActionController::TestCase
  setup do
    @admission_form = admission_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admission_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admission_form" do
    assert_difference('AdmissionForm.count') do
      post :create, admission_form: {  }
    end

    assert_redirected_to admission_form_path(assigns(:admission_form))
  end

  test "should show admission_form" do
    get :show, id: @admission_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admission_form
    assert_response :success
  end

  test "should update admission_form" do
    patch :update, id: @admission_form, admission_form: {  }
    assert_redirected_to admission_form_path(assigns(:admission_form))
  end

  test "should destroy admission_form" do
    assert_difference('AdmissionForm.count', -1) do
      delete :destroy, id: @admission_form
    end

    assert_redirected_to admission_forms_path
  end
end
