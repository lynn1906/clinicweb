require "application_system_test_case"

class UserCsTest < ApplicationSystemTestCase
  setup do
    @user_c = user_cs(:one)
  end

  test "visiting the index" do
    visit user_cs_url
    assert_selector "h1", text: "User cs"
  end

  test "should create user c" do
    visit user_cs_url
    click_on "New user c"

    fill_in "Contact", with: @user_c.contact
    fill_in "Email", with: @user_c.email
    fill_in "Password", with: @user_c.password
    fill_in "Role", with: @user_c.role
    fill_in "Username", with: @user_c.username
    click_on "Create User c"

    assert_text "User c was successfully created"
    click_on "Back"
  end

  test "should update User c" do
    visit user_c_url(@user_c)
    click_on "Edit this user c", match: :first

    fill_in "Contact", with: @user_c.contact
    fill_in "Email", with: @user_c.email
    fill_in "Password", with: @user_c.password
    fill_in "Role", with: @user_c.role
    fill_in "Username", with: @user_c.username
    click_on "Update User c"

    assert_text "User c was successfully updated"
    click_on "Back"
  end

  test "should destroy User c" do
    visit user_c_url(@user_c)
    click_on "Destroy this user c", match: :first

    assert_text "User c was successfully destroyed"
  end
end
