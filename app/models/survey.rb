class Survey < ApplicationRecord
  belongs_to :user
  has_many :input_fields, class_name: "InputField::Base", inverse_of: :survey, dependent: :delete_all
  has_many :answer
end
