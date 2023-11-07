# Text-based Game Challenge
# Text-based Game Challenge

def render_art
    File.readlines("tomb.txt") do |line|
        puts line
    end
end
puts render_art

def start_up
puts  ' '
puts 'Welcome to Tomb Raider'
puts  ' '
puts 'Released today by ADA Production'
puts  ' '
    return first_scenario
end

def end_game
    puts  ' '
    puts 'You have won Tomb Raider' 
    puts  ' '
    puts 'Would you like to play again?? yes or no?'
    decision = gets.chomp
    if decision == 'yes'
        return start_up
    else 
        return 'GAME OVER!'
    end
end

def render_skull
    File.readlines("skull.txt") do |line|
        puts line
    end
end

def die_noob
    puts 'Would you like to play again?? yes or no?'
    decision = gets.chomp
        if decision == 'yes'
            return start_up
        else 
            return 'GAME OVER!'
        end
end 

def render_door
    File.readlines("door.txt") do |line|
        puts line
    end
end

def render_boat
    File.readlines("boat.txt") do |line|
        puts line
    end
end

def mystery_door
    puts ' '
    puts render_door
    puts ' '
    puts 'You have stumbled upon a mysterious door. The handle is shaped like a skull..what do you do?'
    puts 'option 1: Open it because there is no way out the cave '
    puts 'option 2: Turn back and take the loot'
    option = gets.chomp
        option = option.to_i
    if option == 1 
        puts ' '
        puts 'You find a boat docked filled with even more treasure and a way to sail home!'
        puts render_boat
        puts ' '    
        return end_game
    elsif option == 2 
        puts 'The cave begins to shake and skeletons chase you to your doom. YOU DIE!'
        puts render_skull 
        puts ' '   
        return die_noob
    else 
        return 'Please enter 1 or 2'
    end
end 

def render_machete
    File.readlines("machete.txt") do |line|
        puts line
    end
end

def render_rundie
    File.readlines("rundie.txt") do |line|
        puts line
    end
end

def jungle
    puts 'While walking you fall into a hole that leads to a mysterious door. What would you like to do?'
        puts 'option 1: Open the mysterious door'
        puts 'option 2: Try to climb your way out'
    option = gets.chomp
        option = option.to_i
    if option == 1 
        puts ' '
        return mystery_door
    elsif option == 2 
        puts ' '
        puts 'In the process of climbing you fall and land on your machete. SUCKS TO BE YOU, YOU DIE!'
        puts render_rundie
        return die_noob
    else 
        return 'Please enter 1 or 2'
    end
end 

def found_loot
        puts 'What would you like to do with it?'
        puts 'option 1: Leave the loot'
        puts 'option 2: Take the loot and run'
    option = gets.chomp
        option = option.to_i
    if option == 1 
        puts ' '
        return mystery_door
    elsif option == 2 
        puts ' '
        puts 'The cave begins to shake and skeletons chase you to your doom. YOU DIE!'
        puts render_skull
        puts ' '
        return die_noob
    else 
        return 'Please enter 1 or 2'
    end
end 

def render_dogs
    File.readlines("dogs.txt") do |line|
        puts line
    end
end
def rabid_dogs
    puts ' '
    puts render_dogs
    puts ' '
    puts 'You have encountered rabid dogs. What would you like to do?'
        puts 'option 1: Use machete to fight them off'
        puts 'option 2: Throw your lunch to distract and run!'
    option = gets.chomp
        option = option.to_i
    if option == 1 
        puts ' '
        puts 'You come out victorious. Proceed into the jungle'
        puts render_machete
        return jungle
    elsif option == 2 
        puts ' '
        puts 'In the process of running you trip and land on your machete. COWARD, YOU DIE!'
        puts render_rundie    
        return die_noob
    else 
        return 'Please enter 1 or 2'
    end
end 

def render_island
    File.readlines("island.txt") do |line|
        puts line    
    end
end
def first_scenario  
    puts ' '
    puts render_island
    puts ' '
    puts "You're starting on a boat on the way to skull island where you want to find some buried loot. After five long years of searching, you hit the shore and start your quest. Where do you want to start?"
    puts ' '
    puts 'option 1: explore the cave'
    puts 'option 2: explore the jungle'
    option = gets.chomp
    option = option.to_i
    if option == 1 
        puts ' '
        puts 'You walk towards the cave with a flashlight and find loot.'
            return found_loot
    elsif option == 2 
        puts ' '
        puts 'You walk through the jungle with a machete and find rabid dogs'
            return rabid_dogs
    else 
        return 'Please enter 1 or 2'
    end
end

p start_up

