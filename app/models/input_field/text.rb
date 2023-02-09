module InputField
    class Text < Base
        
        # store_accessor :data, :placeholder

        def input_name
            'text456'
        end

        def self.placeholder
            "ici du texte"
        end
    end
end

