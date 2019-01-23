require('json')

class Rivers
    attr_accessor :fish_data

    def initialize()
        @fish_data = []
    end

    def getRiverData()
        data = File.read('./data/fishes.json')
        river_stats = JSON.parse(data)
        @fish_data << river_stats
    end

end



