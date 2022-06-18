require "application_system_test_case"

class WineOenologistsTest < ApplicationSystemTestCase
  setup do
    @wine_oenologist = wine_oenologists(:one)
  end

  test "visiting the index" do
    visit wine_oenologists_url
    assert_selector "h1", text: "Wine oenologists"
  end

  test "should create wine oenologist" do
    visit wine_oenologists_url
    click_on "New wine oenologist"

    click_on "Create Wine oenologist"

    assert_text "Wine oenologist was successfully created"
    click_on "Back"
  end

  test "should update Wine oenologist" do
    visit wine_oenologist_url(@wine_oenologist)
    click_on "Edit this wine oenologist", match: :first

    click_on "Update Wine oenologist"

    assert_text "Wine oenologist was successfully updated"
    click_on "Back"
  end

  test "should destroy Wine oenologist" do
    visit wine_oenologist_url(@wine_oenologist)
    click_on "Destroy this wine oenologist", match: :first

    assert_text "Wine oenologist was successfully destroyed"
  end
end
