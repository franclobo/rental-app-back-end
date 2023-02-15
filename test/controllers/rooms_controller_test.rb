require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url, as: :json
    assert_response :success
  end

  test "should create room" do
    assert_difference("Room.count") do
      post rooms_url, params: { room: { bathrooms: @room.bathrooms, beds: @room.beds, boolean: @room.boolean, breackfast: @room.breackfast, garage: @room.garage, images: @room.images, integer: @room.integer, numeric: @room.numeric, pets_welcome: @room.pets_welcome, price: @room.price, references: @room.references, retals: @room.retals, text: @room.text } }, as: :json
    end

    assert_response :created
  end

  test "should show room" do
    get room_url(@room), as: :json
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { bathrooms: @room.bathrooms, beds: @room.beds, boolean: @room.boolean, breackfast: @room.breackfast, garage: @room.garage, images: @room.images, integer: @room.integer, numeric: @room.numeric, pets_welcome: @room.pets_welcome, price: @room.price, references: @room.references, retals: @room.retals, text: @room.text } }, as: :json
    assert_response :success
  end

  test "should destroy room" do
    assert_difference("Room.count", -1) do
      delete room_url(@room), as: :json
    end

    assert_response :no_content
  end
end
