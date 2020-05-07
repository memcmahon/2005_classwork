play_again = true
lives = -3
if lives == 0
  puts "You Lose!"
elsif !play_again
  puts "Game Over!"
elsif play_again && lives > 0
  puts "Welcome back!"
else
  puts "invalid input"
end
