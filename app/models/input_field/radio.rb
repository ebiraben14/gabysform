module InputField
    class Radio < Base
        
        # store_accessor :data, :placeholder

        def input_name
            'Radio'
        end

        def input_placeholder
            "ici du Radio"
        end
    end
end