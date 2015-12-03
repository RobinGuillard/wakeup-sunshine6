require 'test_helper'

class AlarmsControllerTest < ActionController::TestCase
  setup do
    @alarm = alarms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alarms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alarm" do
    assert_difference('Alarm.count') do
      post :create, alarm: { active: @alarm.active, heures: @alarm.heures, lieu: @alarm.lieu, minutes: @alarm.minutes }
    end

    assert_redirected_to alarm_path(assigns(:alarm))
  end

  test "should show alarm" do
    get :show, id: @alarm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alarm
    assert_response :success
  end

  test "should update alarm" do
    patch :update, id: @alarm, alarm: { active: @alarm.active, heures: @alarm.heures, lieu: @alarm.lieu, minutes: @alarm.minutes }
    assert_redirected_to alarm_path(assigns(:alarm))
  end

  test "should destroy alarm" do
    assert_difference('Alarm.count', -1) do
      delete :destroy, id: @alarm
    end

    assert_redirected_to alarms_path
  end
end
