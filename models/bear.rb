class Bear

    attr_accessor :name, :stomach
    attr_reader :capacity

    def initialize(name, capacity, stomach)
        @name = name
        @capacity = capacity
        @stomach = stomach
    end


end