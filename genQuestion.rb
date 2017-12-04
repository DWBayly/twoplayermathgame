def genQuestion(player)
  randgen = Random.new
  x = randgen.rand(10)
  y = randgen.rand(10)
  puts "#{player.name}:What does #{x} plus #{y} equal?"
  playerans = gets
  result = x + y
  puts result
  if playerans.to_i == result
     puts"#{player.name} YES! You are correct."
  else 
    player.lives = player.lives - 1
    puts "#{player.name}:Seriously? No!"
  end
end