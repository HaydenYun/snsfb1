require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get reply_write" do
    get :reply_write
    assert_response :success
  end

  test "should get reply_update" do
    get :reply_update
    assert_response :success
  end

  test "should get reply_destroy" do
    get :reply_destroy
    assert_response :success
  end

end
