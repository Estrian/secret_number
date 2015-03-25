###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#
#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random 
#       number between 1 and 10.
#     - Ask the user for their guess.
#     - Verify if they were correct. If the player guesses correctly they win
#       the game, they should be congratulated and the game should end.
#     - If they guess incorrectly, give the player some direction. If they
#       guess too high let them know, if they guess too low, let them know.
#     - Don't forget to let your players know how many guesses they have left.
#       Your game should say something like:
#         "You have X guesses before the game is over enter a another number"
#     - If they don't guess correctly after 3 tries, display that the player
#       lost and that the game is over. Be nice and let them know what the
#       `secret_number` was.
#
###############################################################################

puts "Welcome to Emil's Secret Number game"
puts "Please enter your name"
player_name = gets.strip
puts "Hi there #{player_name}. To play this game, please guess a number between 1 and 10. You have three chances to guess the correct number. Good luck, friend."

secret_number = 9
guesses = 0
total_guesses = 3 

while guesses < total_guesses
  guesses += 1
  guesses_left = total_guesses - guesses

  puts "Enter your guess"
  guess = gets.strip.to_i

  puts "You can only guess between 1 and 10" if guess < 1 || guess > 10

  if guess == secret_number
    puts "You Won"
    exit
  elsif guess < secret_number
    puts "Ya guessed too low, please guess higher"
    puts "You have #{guesses} guesses left"
  elsif guess > secret_number
    puts "Ya guessed too high, please guess lower"
    puts "You have #{guesses} guesses left"
  end
end 

puts "The secret number was #{secret_number}, kid"


