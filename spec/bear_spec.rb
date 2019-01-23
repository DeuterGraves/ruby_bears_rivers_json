require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../models/bear.rb')
require_relative('../models/rivers.rb')

class BearTest < MiniTest::Test
    def setup()
        @bear = Bear.new("Tony", 15, 0)
        @rivers = Rivers.new()
    end

    def test_bear_has_name()
        assert_equal("Tony", @bear.name())
    end

    def test_river_gets_fish_value()
        fish_value = 2
        assert_equal(fish_value, @rivers.getFishValue("Plata", "Simon"))
    end

    def test_river_gets_fish_value_5()
        fish_value = 5
        # binding.pry
        assert_equal(fish_value, @rivers.getFishValue("Potomac", "Susan"))
    end

    def test_river_doesnt_exist()
        assert_equal(false, @rivers.isRiver?("Nile"))
    end

    def test_river_does_exist()
        assert_equal(true, @rivers.isRiver?("Plata"))
    end

    def test_no_river_exception()
        assert_equal("I'm sorry Dave, that's not a river", @rivers.getFishIfRiver("Amazon", "Bob"))
    end

    def test_gets_fish_if_river()
        assert_equal(4, @rivers.getFishIfRiver("Mississippi", "Drew"))
    end

    def test_isRiver?()
        assert_equal(true, @rivers.isRiver?("Mississippi"))
    end

end
