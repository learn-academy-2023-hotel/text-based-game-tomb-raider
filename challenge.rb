# Text-based Game Challenge
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
class Tomb_raider 
    attr_accessor :character
    def initialize (character)
        @character = character
    end
end
character = Tomb_raider.new('Lara')

puts "You're starting on a boat on the way to skull island where you want to find some buried loot. After five long years of searching, you hit the shore and start your quest. Where do you want to start?"
puts 'option 1: explore the cave'
puts 'option 2: explore the jungle'

# class First_scenario < Tomb_raider
#     def initialize (character)
#     super (character)
#     @option = gets.chomp
#     end
#     def get_option
#         if @option == 1 
#             "#{@character} walks towards the cave with a flashlight and find loot"
#         elsif @option == 2 
#             "#{@character} walks through the jungle with a machete and find rabid dogs"
#         else 
#             'Please enter 1 or 2'
#         end
#     end
# end
# p get_option
# 1 = First_scenario.new(1)
# 2 = First_scenario.new(2)

# def first_scenario  
#     option = gets.chomp
#     option = option.to_i
#     if option == 1 
#         return 'you walk towards the cave with a flashlight and find loot'
#     elsif option == 2 
#         return 'you walk through the jungle with a machete and find rabid dogs'
#     else 
#         return 'Please enter 1 or 2'
#     end
# end
# p first_scenario
# # puts 'Good Luck'

# # def second_scenario

