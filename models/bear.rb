class Bear

    attr_accessor :name, :stomach
    attr_reader :capacity

    def initialize(name, capacity, stomach)
        @name = name
        @capacity = capacity
        @stomach = stomach
    end

    # def getFishValue(river, fish)
    #     rivers[river][fish]
    # end

end