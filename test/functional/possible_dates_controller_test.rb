require 'test_helper'

class PossibleDatesControllerTest < ActionController::TestCase
  setup do
    @possible_date = possible_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possible_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possible_date" do
    assert_difference('PossibleDate.count') do
      post :create, possible_date: { date_from: @possible_date.date_from, date_to: @possible_date.date_to, event_id: @possible_date.event_id }
    end

    assert_redirected_to possible_date_path(assigns(:possible_date))
  end

  test "should show possible_date" do
    get :show, id: @possible_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possible_date
    assert_response :success
  end

  test "should update possible_date" do
    put :update, id: @possible_date, possible_date: { date_from: @possible_date.date_from, date_to: @possible_date.date_to, event_id: @possible_date.event_id }
    assert_redirected_to possible_date_path(assigns(:possible_date))
  end

  test "should destroy possible_date" do
    assert_difference('PossibleDate.count', -1) do
      delete :destroy, id: @possible_date
    end

    assert_redirected_to possible_dates_path
  end
end
