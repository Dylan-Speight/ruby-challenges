# There are three parts to this challenge and remember to push your solution.

# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

time_to_class = "90 minutes"
how_long_to_class = "This morning I took the train to class and it took me #{time_to_class} to arrive."
p how_long_to_class

# PART 2:c
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# Write a program that asks the customer for their order.
#   if they order a cocktail, add one to the number of cocktails you need to make,
#   if they order a water, add one to the number of waters you need to make,
#   if they order a beer, add one to the number of beers you need to pour

# Print the final drinks order so you know what to make

class Drinks
        attr_accessor :drink_name, :drink_sell_price, :drink_cost_to_make, :drink_quantity_total, :customer_drink_total
        def initialize(drink_name, drink_sell_price, drink_cost_to_make, drink_quantity_total, customer_drink_total)
            @name = drink_name
            @sell = drink_sell_price
            @cost = drink_cost_to_make
            @quantity = drink_quantity_total
            @customer = customer_drink_total
        end
        def add
                @quantity += 1
        end
        def add_customer
                @customer += 1
        end
        def customer_quantity(drink_name)
                "#{@customer} #{drink_name}"
        end
        def quantity(drink_name)
                "#{@quantity} #{drink_name}"
        end
        def total_drink_profit
                (@quantity * (@sell - @cost))
        end
        def customer_clear
                        @customer = 0
        end
        
    end

    cocktail = Drinks.new("Cocktail", 22.00, 8.00, 3, 0)
    water = Drinks.new("Water", 6.00, 0.15, 2, 0)
    beer = Drinks.new("Beer", 12.00, 3.00, 6, 0)


drinks_menu = ["[C]ocktail", "[W]ater", "[B]eer", "[F]inish order"]      
#^^^^ Assumes staff have knowledge of the [Ba]ckorder, [T]otal and [Q]uit options

loop do
        puts "Welcome to the menu" 
        puts "What would you like to order? \n\n"
        puts "Our drinks menu:"
        puts drinks_menu
drink_order_type = gets.chomp.capitalize
case drink_order_type
when  "Cocktail", "C"                   #Adds cocktail to both the customers order and the total
        system('clear')
        puts "You have ordered 1 cocktail\n\n"
        cocktail.add
        cocktail.add_customer
when  "Water", "W"                     #Adds water to both customers order and total
        system('clear')
        puts "You have ordered 1 Water\n\n"
        water.add
        water.add_customer
when  "Beer", "B"                       #Adds beer to both customer order and total
        system('clear')
        puts "You have ordered 1 Beer\n\n"
        beer.add
        beer.add_customer
when  "Finish order", "F"        #Customer on screen reciept for their order. Then resets customer order
        system('clear')
        puts "You have ordered:\n\n#{cocktail.customer_quantity("Cocktails")}" "#{cocktail.customer_drink_total}"
        puts "#{water.customer_quantity("Waters")}\n#{beer.customer_quantity("Beers")}\n\n"
                cocktail.customer_clear
                water.customer_clear
                beer.customer_clear
when  "Backlog", "Ba"       #Backlog of drinks to be made
        system('clear') 
        puts "Drinks to be made:\n\n#{cocktail.quantity("Cocktails")}"
        puts "#{water.quantity("Water")}"
        puts "#{beer.quantity("Beers")}\n\n" 
when  "Total", "T"          #Profits made up until this stage
        system('clear')
        puts "Profit:\n\n""The profit made from selling cocktails is $#{cocktail.total_drink_profit}"
        puts "The profit made from selling Waters is $#{water.total_drink_profit}"
        puts "The profit made from selling Beers is $#{beer.total_drink_profit}\n\n"
when "Quit", "Q"
        system('clear')
        break
else 
        system('clear')
        puts "Invalid selection\n\n"
    end
end
#\/Final profits after quitting
puts "Final profit:\n\nThe end profit made from selling cocktails was $#{cocktail.total_drink_profit}"
puts "The end profit made from selling Waters was $#{water.total_drink_profit}"
puts "The end profit made from selling Beers was $#{beer.total_drink_profit}"

# Was going to create a customer order reciept but ran out of time :( 

# Part Three:
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have 