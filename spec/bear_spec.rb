require('minitest/autorun')
require('minitest/rg')
require_relative('../models/bear.rb')
require_relative('../models/rivers.rb')

class BearTest < MiniTest::Test
    def setup()
        @bear = Bear.new("Tony", 15, 0)
        @rivers = Rivers.new()

        @rivers.getRiverData()
    end

    def test_bear_has_name()
        assert_equal("Tony", @bear.name())
    end

    def test_bear_getsfish_value()
        fish_value = 2
        assert_equal(fish_value, @bear.getFishValue("Plata", "Simon"))
    end

end
