require 'minitest/autorun'
require 'minitest/pride'
require './lib/shuffler'
require './lib/deck'
require './lib/card'

class ShufflerTest < MiniTest::Test
  def setup
    @ace_of_hearts = Card.new("ace", "hearts")
    @two_of_hearts = Card.new("two", "hearts")
    @three_of_hearts = Card.new("three", "hearts")
    @deck = Deck.new([@ace_of_hearts, @two_of_hearts, @three_of_hearts])
    @shuffler = Shuffler.new(@deck)
  end

  def test_it_exists
    assert_instance_of Shuffler, @shuffler
  end

  def test_it_has_a_deck
    assert_equal @deck, @shuffler.deck
  end

  def test_it_can_shuffle_riffle_style
    old_deck = @shuffler.deck.clone
    assert_equal old_deck.cards, @shuffler.deck.cards
    @shuffler.riffle
    refute_equal old_deck.cards, @shuffler.deck.cards
  end
end