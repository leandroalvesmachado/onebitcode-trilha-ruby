class Game
end

pes = Game.new
resident_evil = Game.new
zelda = Game.new

puts pes, resident_evil, zelda # <Game:0x00007f44f64751c0>, <Game:0x00007f44f64750d0>, <Game:0x00007f44f6475030>
puts pes.class, resident_evil.class, zelda.class # Game, Game, Game
