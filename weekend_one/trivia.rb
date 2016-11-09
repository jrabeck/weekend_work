  # 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
	attr_accessor :question, :answer

	def initialize(question, answer)
		@question = question
		@answer = answer
	end

	def question
		@question
	end

	def answer
		@answer
	end
end



class Deck
	attr_accessor :cards

	def initialize(trivia_data)
		@cards = []
		trivia_data.each do |question, answer|
			@cards << Card.new(question, answer) 
		end
	end

	def remaining_cards
		@remaining_cards = cards.length
	end

	def draw_card
		cards.shuffle!
		@draw_card = cards.pop
	end
end

trivia_data = {
	"What is the capital of Illinois? \n A. Springfield \n B. Chicago \n C. Des Moines" => "a",
	"Is Africa a \n A. country \n or \n B. continent?" => "b",
	"Tug of war was once an Olympic event. \n True \n False?" => "True"
}
score_r = 0
score_w = 0
wrong = []
deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class

  puts card.question
  user_answer = gets.chomp

  if user_answer.downcase == card.answer.downcase
  	puts "Correct!"
  	score_r += 1 
  else
  	puts "Incorrect!"
  	puts "Try again: "
  	user_answer = gets.chomp

  	if user_answer.downcase == card.answer.downcase
  		puts "Correct!"
  		score_r += 1 
  	else
  		puts "Incorrect again!"
  		wrong << card
  		score_w += 1
  	end
  	
	end
end

correct = []
puts "Your score is: #{score_r} correct, #{score_w} incorrect."
puts "Do you want to retry the ones you got wrong? \n yes or no?"
x = gets.chomp
if x == "yes"
	wrong.each do |wrong_card|
		puts wrong_card.question
		user_answer = gets.chomp
		if user_answer.downcase == wrong_card.answer.downcase
			puts "Correct!"
		else 
			puts "Incorrect!"
			score_w += 1
		end
	end
end