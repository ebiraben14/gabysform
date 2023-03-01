module InputField
    class Datetime < Base
        
        # store_accessor :data, :placeholder

        def input_name
            'datetime'
        end

        def input_placeholder
            "ici du datetime"
        end
    end
end