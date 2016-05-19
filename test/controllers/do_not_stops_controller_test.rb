require 'test_helper'

class DoNotStopsControllerTest < ActionController::TestCase
  setup do
    @do_not_stop = do_not_stops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:do_not_stops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create do_not_stop" do
    assert_difference('DoNotStop.count') do
      post :create, do_not_stop: { graphik_id: @do_not_stop.graphik_id, station_id: @do_not_stop.station_id }
    end

    assert_redirected_to do_not_stop_path(assigns(:do_not_stop))
  end

  test "should show do_not_stop" do
    get :show, id: @do_not_stop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @do_not_stop
    assert_response :success
  end

  test "should update do_not_stop" do
    patch :update, id: @do_not_stop, do_not_stop: { graphik_id: @do_not_stop.graphik_id, station_id: @do_not_stop.station_id }
    assert_redirected_to do_not_stop_path(assigns(:do_not_stop))
  end

  test "should destroy do_not_stop" do
    assert_difference('DoNotStop.count', -1) do
      delete :destroy, id: @do_not_stop
    end

    assert_redirected_to do_not_stops_path
  end
end
