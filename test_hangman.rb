require 'test/unit'
require_relative 'hang_final'

class TestHangFinal < Test::Unit::TestCase
	def setup
		@hangman = Hangman.new
		@board = "_ _ _ _ _ _ "
		@word = "orange"
		@previous_letters = ["s", "p", "r"]
	end

	def test_board_is_right_length
		assert @hangman.draw_board("fish").length == 8
		assert @hangman.draw_board("").length == 0
	end

	def test_non_lowercase_letter_guess_is_invalid
		assert_equal @hangman.word_has?(@word, "?"), "Invalid"
		assert_equal @hangman.word_has?(@word, "A"), "Invalid"
	end

	def test_word_that_includes_letter_returns_true
		assert @hangman.word_has?(@word, "o")
	end

	def test_word_that_doesnt_include_letter_returns_false
		assert !@hangman.word_has?(@word, "q")
	end

	def test_wrong_letter_will_not_display_on_board
		assert_equal @hangman.put_letter_on_board(@word, "q"), @board 
	end

	def test_right_letter_displays_on_board
		assert_equal @hangman.put_letter_on_board(@word, "o"), "o _ _ _ _ _ "
		assert_equal @word.index("o"), @hangman.put_letter_on_board(@word, "o").index("o") 
		assert_equal @word.index("a"), @hangman.put_letter_on_board(@word, "a").index("a")/2
	end

	# def test
	# 	assert @previous_letters.to_s.include?("r")
	# end


	# def test_wrong_letter
	# 	assert @hangman.wrong_letter("s")
	# end

end