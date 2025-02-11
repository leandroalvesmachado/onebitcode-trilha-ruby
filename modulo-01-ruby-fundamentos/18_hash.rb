# 1 - Criando Hash
puts "1 - Criando Hash"
mov = Hash.new
puts mov.class # Hash

movie = {"name" => "Avatar", "year" => 2023}
puts movie # {"name"=>"Avatar", "year"=>2023}

movie2 = {:name => "Super Mario Bros", :year => 2023}
puts movie2 # {:name=>"Super Mario Bros", :year=>2023}

# 2 - Iterando valores (For, WHile e Each)
puts "\n"
puts "2 - Iterando valores (For, WHile e Each)"
puts movie2.keys # name, year
puts movie2.values # Super Mario Bros, 2023

puts "\n"
for key, value in movie2
    puts "#{key}-#{value}"
    # name-Super Mario Bros
    # year-2023
end

puts "\n"
i = 0
while i < movie2.length
    puts "#{movie2.keys[i]}-#{movie2.values[i]}"
    i+=1
    # name-Super Mario Bros
    # year-2023
end

puts "\n"
movie2.each {|key, value| puts "#{key}-#{value}"}
# name-Super Mario Bros
# year-2023