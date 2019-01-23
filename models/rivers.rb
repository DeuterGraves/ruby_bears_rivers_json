require('json')
require('pry')

class Rivers
    attr_accessor :fish_data

    def initialize()
        data = File.read('./data/fishes.json')
        @fish_data = JSON.parse(data)
    end

    def getFishValue(river, fish)
        # binding.pry
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
            p "I'm sorry Dave, that's not a river"
        end
    end


#class end
end



