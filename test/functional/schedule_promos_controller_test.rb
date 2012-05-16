require 'test_helper'

class SchedulePromosControllerTest < ActionController::TestCase
  setup do
    @schedule_promo = schedule_promos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_promo" do
    assert_difference('SchedulePromo.count') do
      post :create, schedule_promo: { app_id: @schedule_promo.app_id, promo_id: @schedule_promo.promo_id, start_time: @schedule_promo.start_time, stop_time: @schedule_promo.stop_time }
    end

    assert_redirected_to schedule_promo_path(assigns(:schedule_promo))
  end

  test "should show schedule_promo" do
    get :show, id: @schedule_promo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule_promo
    assert_response :success
  end

  test "should update schedule_promo" do
    put :update, id: @schedule_promo, schedule_promo: { app_id: @schedule_promo.app_id, promo_id: @schedule_promo.promo_id, start_time: @schedule_promo.start_time, stop_time: @schedule_promo.stop_time }
    assert_redirected_to schedule_promo_path(assigns(:schedule_promo))
  end

  test "should destroy schedule_promo" do
    assert_difference('SchedulePromo.count', -1) do
      delete :destroy, id: @schedule_promo
    end

    assert_redirected_to schedule_promos_path
  end
end
