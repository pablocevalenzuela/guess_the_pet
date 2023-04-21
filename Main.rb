secret_pet = "owl"
input_word = ""
guess_limit = 3
guess_count = 0
state_guesses = false
track = [ "It's a bird.", "Turns almost all of his head.", "It's eyes are really big." ]
track_count = 1

while input_word != secret_pet && !state_guesses
  if guess_count < guess_limit  
    puts "Track #{track_count}: #{track[guess_count]}"
    puts "What is the secret pet?"
    input_word = gets.chomp().to_s
    guess_count += 1
    track_count += 1
  else 
    state_guesses = true
  end  
end

if state_guesses
  puts "You lose :("
else
  puts "You won, It is a #{secret_pet.upcase} :)"
end