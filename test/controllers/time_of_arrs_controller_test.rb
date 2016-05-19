require 'test_helper'

class TimeOfArrsControllerTest < ActionController::TestCase
  setup do
    @time_of_arr = time_of_arrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_of_arrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_of_arr" do
    assert_difference('TimeOfArr.count') do
      post :create, time_of_arr: { graphik_id: @time_of_arr.graphik_id, station_id: @time_of_arr.station_id, timeOfArrival: @time_of_arr.timeOfArrival }
    end

    assert_redirected_to time_of_arr_path(assigns(:time_of_arr))
  end

  test "should show time_of_arr" do
    get :show, id: @time_of_arr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_of_arr
    assert_response :success
  end

  test "should update time_of_arr" do
    patch :update, id: @time_of_arr, time_of_arr: { graphik_id: @time_of_arr.graphik_id, station_id: @time_of_arr.station_id, timeOfArrival: @time_of_arr.timeOfArrival }
    assert_redirected_to time_of_arr_path(assigns(:time_of_arr))
  end

  test "should destroy time_of_arr" do
    assert_difference('TimeOfArr.count', -1) do
      delete :destroy, id: @time_of_arr
    end

    assert_redirected_to time_of_arrs_path
  end
end
