require 'test_helper'

class PageViewsControllerTest < ActionController::TestCase
  setup do
    @page_view = page_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_view" do
    assert_difference('PageView.count') do
      post :create, page_view: { time: @page_view.time, url: @page_view.url }
    end

    assert_redirected_to page_view_path(assigns(:page_view))
  end

  test "should show page_view" do
    get :show, id: @page_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_view
    assert_response :success
  end

  test "should update page_view" do
    put :update, id: @page_view, page_view: { time: @page_view.time, url: @page_view.url }
    assert_redirected_to page_view_path(assigns(:page_view))
  end

  test "should destroy page_view" do
    assert_difference('PageView.count', -1) do
      delete :destroy, id: @page_view
    end

    assert_redirected_to page_views_path
  end
end
