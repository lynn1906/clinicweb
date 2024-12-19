require "test_helper"

class UserCsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_c = user_cs(:one)
  end

  test "should get index" do
    get user_cs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_c_url
    assert_response :success
  end

  test "should create user_c" do
    assert_difference("UserC.count") do
      post user_cs_url, params: { user_c: { contact: @user_c.contact, email: @user_c.email, password: @user_c.password, role: @user_c.role, username: @user_c.username } }
    end

    assert_redirected_to user_c_url(UserC.last)
  end

  test "should show user_c" do
    get user_c_url(@user_c)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_c_url(@user_c)
    assert_response :success
  end

  test "should update user_c" do
    patch user_c_url(@user_c), params: { user_c: { contact: @user_c.contact, email: @user_c.email, password: @user_c.password, role: @user_c.role, username: @user_c.username } }
    assert_redirected_to user_c_url(@user_c)
  end

  test "should destroy user_c" do
    assert_difference("UserC.count", -1) do
      delete user_c_url(@user_c)
    end

    assert_redirected_to user_cs_url
  end
end
