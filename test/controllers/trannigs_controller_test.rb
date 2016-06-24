require 'test_helper'

class TrannigsControllerTest < ActionController::TestCase
  setup do
    @trannig = trannigs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trannigs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trannig" do
    assert_difference('Trannig.count') do
      post :create, trannig: { company_id: @trannig.company_id, description: @trannig.description, name: @trannig.name }
    end

    assert_redirected_to trannig_path(assigns(:trannig))
  end

  test "should show trannig" do
    get :show, id: @trannig
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trannig
    assert_response :success
  end

  test "should update trannig" do
    patch :update, id: @trannig, trannig: { company_id: @trannig.company_id, description: @trannig.description, name: @trannig.name }
    assert_redirected_to trannig_path(assigns(:trannig))
  end

  test "should destroy trannig" do
    assert_difference('Trannig.count', -1) do
      delete :destroy, id: @trannig
    end

    assert_redirected_to trannigs_path
  end
end
