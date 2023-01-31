require "application_system_test_case"

class BasesTest < ApplicationSystemTestCase
  setup do
    @basis = bases(:one)
  end

  test "visiting the index" do
    visit bases_url
    assert_selector "h1", text: "Bases"
  end

  test "should create base" do
    visit bases_url
    click_on "New base"

    click_on "Create Base"

    assert_text "Base was successfully created"
    click_on "Back"
  end

  test "should update Base" do
    visit basis_url(@basis)
    click_on "Edit this base", match: :first

    click_on "Update Base"

    assert_text "Base was successfully updated"
    click_on "Back"
  end

  test "should destroy Base" do
    visit basis_url(@basis)
    click_on "Destroy this base", match: :first

    assert_text "Base was successfully destroyed"
  end
end
