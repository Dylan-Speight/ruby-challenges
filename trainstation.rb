subway =
 {
     "Red_line":["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"]
}

puts"put ur start Station "
 sta = gets.chomp.capitalize #<<==== I want to use sta to make it like input user
puts sta

start_station = subway[:Red_line].index(sta) # <<=== you can see that I put sta as index of subway array
puts start_station

end_statio = subway[:Red_line].index("Central")

total_point_in_redLine = subway[:Red_line][start_station..end_statio] #name of points
total_number_in_redLine = subway[:Red_line][start_station..end_statio].length #number od point

puts "you will pass these Stations"
puts total_point_in_redLine
puts "total number of Stations is "
puts total_number_in_redLine
