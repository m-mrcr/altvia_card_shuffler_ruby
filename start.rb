require 'pry'
require './lib/shuffler'
require './lib/deck'
require './lib/card'

ranks = ['2','3','4','5','6','7','8','9','10','Jack','Queen','King','Ace']
suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
deck = Deck.new(ranks.flat_map { |rank| suits.map { |suit| Card.new(rank, suit) } })
dealer = Shuffler.new(deck)

dealer.shuffle