secret_pet = "owl"
input_word = ""
guess_limit = 3
guess_count = 0
state_guesses = false
track = 1

while input_word != secret_pet && !state_guesses
    if guess_count < guess_limit 
      if !state_guesses
        puts "Track #{track}: It's a bird."
      elsif !state_guesses
        puts "Track #{track}: Turns almost all of his head."
      else
        puts "Track #{track}: Her eyes are really big."
      end
      puts "What is the secret pet?"
      word = gets.chomp()
      guess_count += 1
      track += 1
    else 
      state_guesses = true
    end  

end

if state_guesses
 puts "You lose :("
else
 puts "You won, It is a Owl :)"
end