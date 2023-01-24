FactoryBot.define do
  factory :input_field do
    placeholder { "MyString" }
    label { "MyString" }
    required { false }
    hint { "MyString" }
    survey { nil }
  end
end
