require "test_helper"

class InputFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @input_field = input_fields(:one)
  end

  test "should get index" do
    get input_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_input_field_url
    assert_response :success
  end

  test "should create input_field" do
    assert_difference("InputField.count") do
      post input_fields_url, params: { input_field: { hint: @input_field.hint, label: @input_field.label, placeholder: @input_field.placeholder, required: @input_field.required, survey_id: @input_field.survey_id } }
    end

    assert_redirected_to input_field_url(InputField.last)
  end

  test "should show input_field" do
    get input_field_url(@input_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_input_field_url(@input_field)
    assert_response :success
  end

  test "should update input_field" do
    patch input_field_url(@input_field), params: { input_field: { hint: @input_field.hint, label: @input_field.label, placeholder: @input_field.placeholder, required: @input_field.required, survey_id: @input_field.survey_id } }
    assert_redirected_to input_field_url(@input_field)
  end

  test "should destroy input_field" do
    assert_difference("InputField.count", -1) do
      delete input_field_url(@input_field)
    end

    assert_redirected_to input_fields_url
  end
end
