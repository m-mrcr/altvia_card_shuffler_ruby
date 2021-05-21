class Shuffler
  attr_accessor :deck

  def initialize(deck)
    @deck = deck
  end

  def shuffle
    shuffled_deck = []
    until @deck.cards.empty? do
      card = @deck.cards.sample
      shuffled_deck << card
      @deck.cards.delete(card)
    end
    @deck.cards = shuffled_deck
    puts @deck.cards.map { |c| "#{c.rank} of #{c.suit}".capitalize }
  end
end