require"./player"
require"./genQuestion"
require"./checkVictor"
require"pry"
#Two Player Math Game (tpmg)

player1 =Player.new("Player1")
player2 =Player.new("Player2")
while(player1.lives>0&&player2.lives>0)
  genQuestion(player1)
  genQuestion(player2)
  puts "#{player1.name}:#{player1.lives}/3 #{player2.name}:#{player2.lives}/3 "
  puts "-----New Turn -----"
end
puts"-----GAME OVER -----"
victor = checkVictor(player1,player2)
if(victor)
  puts "#{victor.name} wins with a score of #{victor.lives}/3"
else
  puts "NOBODY WINS!"
end
binding.pry