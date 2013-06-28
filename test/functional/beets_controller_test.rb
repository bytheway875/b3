require 'test_helper'

class BeetsControllerTest < ActionController::TestCase
  setup do
    @beet = beets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beet" do
    assert_difference('Beet.count') do
      post :create, beet: { color: @beet.color, description: @beet.description, name: @beet.name, picture: @beet.picture }
    end

    assert_redirected_to beet_path(assigns(:beet))
  end

  test "should show beet" do
    get :show, id: @beet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beet
    assert_response :success
  end

  test "should update beet" do
    put :update, id: @beet, beet: { color: @beet.color, description: @beet.description, name: @beet.name, picture: @beet.picture }
    assert_redirected_to beet_path(assigns(:beet))
  end

  test "should destroy beet" do
    assert_difference('Beet.count', -1) do
      delete :destroy, id: @beet
    end

    assert_redirected_to beets_path
  end
end
