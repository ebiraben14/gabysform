module InputField
    class Text < Base
        
        # store_accessor :data, :placeholder

        def input_name
            'Text'
        end

        def input_placeholder
            "ici du texte"
        end
    end
end

