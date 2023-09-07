def prompt()
    print "> "
end

def gold_room()
    puts "This room is full of gold. How much do you take? [0 to 500]"
    
    prompt; next_move = gets.chomp
    if next_move.include? "0" or next_move.include? "1"
        how_much = next_move.to_i()
    else
        dead("Man, learn to type a number.")
    end

    if how_much < 50
        puts "Nice you're not greedy. You win!"
        Process.exit(0)
    else 
        dead("You greedy thief!")
    end
end

def bear_room()
    puts "There is a bear here."
    puts "The bear has a bunch of honey."
    puts "The fat bear is in front of another door."
    puts "How are you going to move the bear? [take honey] [taunt bear]"
    bear_moved = false

    while true
        prompt; next_move = gets.chomp
        
        if next_move == "take honey"
            dead("The bear looks at you and then slaps your face off.")
        elsif next_move == "taunt bear" and not bear_moved
            puts "The bear has moved from the door. You can go through it now. [taunt bear] [open door]"
            bear_moved = true
        elsif next_move == "taunt bear" and bear_moved
            dead("The bear gets offended and chews your leg off.")
        elsif next_move == "open door" and bear_moved
            gold_room()
        else
            puts "I have no idea what that means"
        end
    end
end

def chum_bucket()
    puts "Here you see the great evil Plankton."
    puts "He forces on you a free chum hat and it puts you under his mind control."
    puts "Do you submit to plankton or eat a Chum Burger? [submit] [chum burger]"

    prompt; next_move = gets.chomp

    if next_move.include? "submit"
        start()
    elsif next_move.include? "chum burger"
        dead("Did you ever learn that chum burgers are poisonous?")
    else  chum_bucket()
    end
end

def dead(why)
    puts "#{why}  Good job!"
    Process.exit(0)
end

def start()
    puts "You are in a dark room."
    puts "There is a door to your right and left."
    puts "Which one do you take? [right] [left]" 

    prompt; next_move = gets.chomp

    if next_move == "left"
        bear_room()
    elsif next_move == "right"
        chum_bucket()
    else
        dead("You stumble around the room until you starve.")
    end
end

start()
