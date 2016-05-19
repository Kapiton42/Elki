require 'test_helper'

class GraphiksControllerTest < ActionController::TestCase
  setup do
    @graphik = graphiks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphiks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graphik" do
    assert_difference('Graphik.count') do
      post :create, graphik: { station_begin_id: @graphik.station_begin_id, station_end_id: @graphik.station_end_id }
    end

    assert_redirected_to graphik_path(assigns(:graphik))
  end

  test "should show graphik" do
    get :show, id: @graphik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graphik
    assert_response :success
  end

  test "should update graphik" do
    patch :update, id: @graphik, graphik: { station_begin_id: @graphik.station_begin_id, station_end_id: @graphik.station_end_id }
    assert_redirected_to graphik_path(assigns(:graphik))
  end

  test "should destroy graphik" do
    assert_difference('Graphik.count', -1) do
      delete :destroy, id: @graphik
    end

    assert_redirected_to graphiks_path
  end
end
