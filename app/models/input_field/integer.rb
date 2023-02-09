module InputField
    class Integer < Base
        
        # store_accessor :data, :placeholder

        def input_name
            'integer'
        end

        def self.placeholder
            "ici du integer"
        end
    end
end

