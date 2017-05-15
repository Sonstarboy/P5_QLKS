require 'test_helper'

class KindRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kind_room = kind_rooms(:one)
  end

  test "should get index" do
    get kind_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_kind_room_url
    assert_response :success
  end

  test "should create kind_room" do
    assert_difference('KindRoom.count') do
      post kind_rooms_url, params: { kind_room: { code: @kind_room.code, name: @kind_room.name } }
    end

    assert_redirected_to kind_room_url(KindRoom.last)
  end

  test "should show kind_room" do
    get kind_room_url(@kind_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_kind_room_url(@kind_room)
    assert_response :success
  end

  test "should update kind_room" do
    patch kind_room_url(@kind_room), params: { kind_room: { code: @kind_room.code, name: @kind_room.name } }
    assert_redirected_to kind_room_url(@kind_room)
  end

  test "should destroy kind_room" do
    assert_difference('KindRoom.count', -1) do
      delete kind_room_url(@kind_room)
    end

    assert_redirected_to kind_rooms_url
  end
end
