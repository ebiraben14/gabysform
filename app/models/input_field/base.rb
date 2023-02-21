module InputField
    class Base < ApplicationRecord
        validates :type, presence: true
        self.table_name = "input_fields"
        belongs_to :survey, inverse_of: :input_fields
        

        def input_name
            "base method pls override me"
        end
    end
end