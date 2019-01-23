require('json')

class Rivers
    attr_accessor :fish_data

    def initialize()
        data = File.read('./data/fishes.json')
        @fish_data = JSON.parse(data)
    end

    def getFishValue(river, fish)
        fish_value = @fish_data[river][fish]
        return fish_value.to_f
    end


end



