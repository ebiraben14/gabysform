require "application_system_test_case"

class InputFieldsTest < ApplicationSystemTestCase
  setup do
    @input_field = input_fields(:one)
  end

  test "visiting the index" do
    visit input_fields_url
    assert_selector "h1", text: "Input fields"
  end

  test "should create input field" do
    visit input_fields_url
    click_on "New input field"

    fill_in "Hint", with: @input_field.hint
    fill_in "Label", with: @input_field.label
    fill_in "Placeholder", with: @input_field.placeholder
    check "Required" if @input_field.required
    fill_in "Survey", with: @input_field.survey_id
    click_on "Create Input field"

    assert_text "Input field was successfully created"
    click_on "Back"
  end

  test "should update Input field" do
    visit input_field_url(@input_field)
    click_on "Edit this input field", match: :first

    fill_in "Hint", with: @input_field.hint
    fill_in "Label", with: @input_field.label
    fill_in "Placeholder", with: @input_field.placeholder
    check "Required" if @input_field.required
    fill_in "Survey", with: @input_field.survey_id
    click_on "Update Input field"

    assert_text "Input field was successfully updated"
    click_on "Back"
  end

  test "should destroy Input field" do
    visit input_field_url(@input_field)
    click_on "Destroy this input field", match: :first

    assert_text "Input field was successfully destroyed"
  end
end
