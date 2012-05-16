require 'test_helper'

class ClickThrusControllerTest < ActionController::TestCase
  setup do
    @click_thru = click_thrus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:click_thrus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create click_thru" do
    assert_difference('ClickThru.count') do
      post :create, click_thru: { time: @click_thru.time, url: @click_thru.url }
    end

    assert_redirected_to click_thru_path(assigns(:click_thru))
  end

  test "should show click_thru" do
    get :show, id: @click_thru
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @click_thru
    assert_response :success
  end

  test "should update click_thru" do
    put :update, id: @click_thru, click_thru: { time: @click_thru.time, url: @click_thru.url }
    assert_redirected_to click_thru_path(assigns(:click_thru))
  end

  test "should destroy click_thru" do
    assert_difference('ClickThru.count', -1) do
      delete :destroy, id: @click_thru
    end

    assert_redirected_to click_thrus_path
  end
end
