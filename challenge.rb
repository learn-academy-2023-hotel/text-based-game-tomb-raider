# Text-based Game Challenge

start_up_screen = 'Welcome to Tomb Raider'
puts start_up_screen.upcase

developers = 'Released today by ADA Production'
puts developers

# file = file.open("tomb.txt")
# file_data = file.read


# def read_tomb tomb
#     file = open(tomb.txt, "r")
#     contents = file.read
#     file.close 
#     contents
# end 

# p read_tomb tomb.txt

# def character_name   
# p 'Enter character name'
#     name = gets.chomp
# puts "Are you sure, #{name}?"
# option = gets.chomp
# option = option.downcase
#     if option == 'yes' 
#         return 'Lets proceed'
#     elsif option == 'no' 
#         p 'Enter another name'
#         return gets.chomp 
#     else 
#         return 'Please enter yes or no'
#     end
# end
# p character_name
# puts 'Good Luck'

puts "You're starting on a boat on the way to skull island where you want to find some buried loot. After five long years of searching, you hit the shore and start your quest. Where do you want to start?"
puts 'option 1: explore the cave'
puts 'option 2: explore the jungle'

def first_scenario  
    option = gets.chomp
    option = option.to_i
    if option == 1 
        return 'you walk towards the cave with a flashlight and find loot'
    elsif option == 2 
        return 'you walk through the jungle with a machete and find rabid dogs'
    else 
        return 'Please enter 1 or 2'
    end
end
p first_scenario
# puts 'Good Luck'


