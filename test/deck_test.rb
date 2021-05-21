require 'minitest/autorun'
require 'minitest/pride'
require '../lib/deck'
require '../lib/card'

class DeckTest < MiniTest::Test
  def setup
    @ace_of_hearts = Card.new("ace", "hearts")
    @two_of_hearts = Card.new("two", "hearts")
    @three_of_hearts = Card.new("three", "hearts")
    @deck = Deck.new([@ace_of_hearts, @two_of_hearts, @three_of_hearts])
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it_has_cards
    assert_equal [@ace_of_hearts, @two_of_hearts, @three_of_hearts], @deck.cards
  end
end