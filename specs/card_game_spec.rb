require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card.rb')
require_relative('../card_game.rb')


class BusTest < MiniTest::Test

  def setup()
    @card1 = Card.new("Hearts", 2)
    @card2 = Card.new("Diamonds", 1)
    @card_game = CardGame.new()
    @cards= [@card1,@card2]
  end

  def test_check_for_ace()
    assert(@card_game.checkforAce(@card2))
  end

  def test_highest_card()
    assert_equal(@card1,@card_game.highest_card(@card1,@card2))
  end

  def test_cards_total()
    assert_equal(3,@card_game.cards_total(@cards))
  end

end
