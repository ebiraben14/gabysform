module InputField
    class Email < Base
        
        # store_accessor :data, :placeholder

        def input_name
            'Email'
        end

        def input_placeholder
            "ici du email"
        end
    end
end