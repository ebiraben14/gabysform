module InputField
    class Datetime < Base
        
        # store_accessor :data, :placeholder

        def input_name
            'Date & Time'
        end

        def input_placeholder
            "ici du Date & Time"
        end
    end
end