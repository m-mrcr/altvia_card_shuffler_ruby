require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < MiniTest::Test
  def setup
    @card = Card.new("ace", "hearts")
  end

  def test_it_exists
    assert_instance_of Card, @card
  end

  def test_it_has_a_suit
    assert_equal "hearts", @card.suit
  end

  def test_it_has_a_rank
    assert_equal "ace", @card.rank
  end
end
