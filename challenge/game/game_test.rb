require_relative "game"
require 'minitest/autorun'

class GameTest < MiniTest::Unit::TestCase

	def test_sortear
	numero_sorteado = Game.new.sortear
	assert_kind_of(Integer, numero_sorteado)
	assert_includes(1..3, numero_sorteado)
end

	def test_chutar_certo
	chute = Game.new.chutar(2, 2)
	assert_equal("Acertou!!!!", chute)
end
	def test_chutar_errado
	chute = Game.new.chutar(2, 6)
	assert_equal("ERRRRRRROOOOUUUU!", chute)
end

end
