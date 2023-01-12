FactoryBot.define do
  factory :input_field do
    placeholder { "MyString" }
    label { "MyString" }
    required { false }
    form_id { 1 }
  end
end
