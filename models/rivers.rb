require('json')
require('pry')
require('date')

class Rivers
    attr_accessor :fish_data

    def initialize()
        data = File.read('./data/fishes.json')
        @fish_data = JSON.parse(data)
    end

    def getFishValue(river, fish)
        
        date = Date.new(2019,01,5)
        binding.pry
        fish_value = @fish_data[river][fish]
        return fish_value.to_f
    end

    def isRiver?(river)
        #check the keys
        rivers = @fish_data.keys
        # binding.pry
        for riverName in rivers
            if  river == riverName
                return true
            end
        end
        return false
    end

    def getFishIfRiver(river,fish)
        if isRiver?(river)
            getFishValue(river, fish)
        else
            # raise "I'm sorry Dave, that's not a river"
            return "I'm sorry Dave, the #{river} is not a river"
        end
    end


#class end
end



