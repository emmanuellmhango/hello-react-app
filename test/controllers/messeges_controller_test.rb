require "test_helper"

class MessegesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messege = messeges(:one)
  end

  test "should get index" do
    get messeges_url
    assert_response :success
  end

  test "should get new" do
    get new_messege_url
    assert_response :success
  end

  test "should create messege" do
    assert_difference("Messege.count") do
      post messeges_url, params: { messege: { message: @messege.message } }
    end

    assert_redirected_to messege_url(Messege.last)
  end

  test "should show messege" do
    get messege_url(@messege)
    assert_response :success
  end

  test "should get edit" do
    get edit_messege_url(@messege)
    assert_response :success
  end

  test "should update messege" do
    patch messege_url(@messege), params: { messege: { message: @messege.message } }
    assert_redirected_to messege_url(@messege)
  end

  test "should destroy messege" do
    assert_difference("Messege.count", -1) do
      delete messege_url(@messege)
    end

    assert_redirected_to messeges_url
  end
end
