require 'test_helper'

class ActualsControllerTest < ActionController::TestCase
  setup do
    @actual = actuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actual" do
    assert_difference('Actual.count') do
      post :create, :actual => @actual.attributes
    end

    assert_redirected_to actual_path(assigns(:actual))
  end

  test "should show actual" do
    get :show, :id => @actual.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @actual.to_param
    assert_response :success
  end

  test "should update actual" do
    put :update, :id => @actual.to_param, :actual => @actual.attributes
    assert_redirected_to actual_path(assigns(:actual))
  end

  test "should destroy actual" do
    assert_difference('Actual.count', -1) do
      delete :destroy, :id => @actual.to_param
    end

    assert_redirected_to actuals_path
  end
end
