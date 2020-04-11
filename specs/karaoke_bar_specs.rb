require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../karaoke_bar')
require_relative('../customer')
require_relative('../room')

class TestKaraokeBar < Minitest::Test

  def setup
    @karaoke_bar = KaraokeBar.new("Go To 11", [1,2,3], [1,2,3])
    @customer1 = Customer.new("Gill", 75, 24)
    @room1 = Room.new("Roomy", 3)
    @room2 = Room.new("Blues", 3)
    @room3 = Room.new("Rock", 3)

    # @song1 = Song.new()
    # @song2 = Song.new()
    # @song3 = Song.new()


  end

  #Test bar name
  def test_name 
    assert_equal("Go To 11", @karaoke_bar.name()) 
  end

  #Test customer name
  def test_name2
    assert_equal("Gill", @customer1.name())
  end 

  def test_karaoke_bar_has_no_rooms()
    assert_equal(0, @karaoke_bar.room_count())
  end

  def test_karaoke_bar_has_more_than_one_room
    @karaoke_bar.add_rooms(@room1)
    @karaoke_bar.add_rooms(@room2)
    @karaoke_bar.add_rooms(@room3)
    assert_equal(3, @karaoke_bar.room_count())
  end 


  def test_karaoke_bar_has_no_customer()
      assert_equal(0, @karaoke_bar.customer_count())
  end

    def test_karaoke_bar_has_more_than_one_customer
        @customer.add_customer(@customer1)
        assert_equal(1, @karaoke_bar.customer_count())
    end 

    # def test_add_customer_to_room()
    #     @karaoke_bar.add_rooms(@room1)
    #     @room.add_customer(@customer1)
    #     assert_equal(1, @karaoke_bar.room_count())
    #     assert_equal(1, @room.customer.size())
    # end

  end
  



# def test_remove_customer_from_room
#   @karaoke_bar.remove_customer_from_room(@Customer1)
#   assert_equal(0, @room.room_count())
# end 

  

#   def test_can_add_customer_to_room
#     @karaoke_bar.add_customer(@Customer1)
#     assert_equal(1, @KaraokeBar.rooms)
#   end 

# def test_can_add_drinks
#   @pub.add_drink(@drink1)
#   assert_equal(1, @pub.drink_count)
# end



