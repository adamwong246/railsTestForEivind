require 'test_helper'

class RoundRobinPromosControllerTest < ActionController::TestCase
  setup do
    @round_robin_promo = round_robin_promos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:round_robin_promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round_robin_promo" do
    assert_difference('RoundRobinPromo.count') do
      post :create, round_robin_promo: { duration: @round_robin_promo.duration, position: @round_robin_promo.position }
    end

    assert_redirected_to round_robin_promo_path(assigns(:round_robin_promo))
  end

  test "should show round_robin_promo" do
    get :show, id: @round_robin_promo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round_robin_promo
    assert_response :success
  end

  test "should update round_robin_promo" do
    put :update, id: @round_robin_promo, round_robin_promo: { duration: @round_robin_promo.duration, position: @round_robin_promo.position }
    assert_redirected_to round_robin_promo_path(assigns(:round_robin_promo))
  end

  test "should destroy round_robin_promo" do
    assert_difference('RoundRobinPromo.count', -1) do
      delete :destroy, id: @round_robin_promo
    end

    assert_redirected_to round_robin_promos_path
  end
end
