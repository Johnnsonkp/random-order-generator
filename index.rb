# INPUTS: Menu choice, name, options for quit etc
# DATA: Array of names
# OUTPUT: Size of class, Menu, names, prompts for quit
# ADD PERSON IMPLEMENTATION: User input, add to array .push?
# RANDOM ORDER IMPLEMENTATION: Copy array, select random name - get random index
#   get name at random index, delete name from array, delete name for array, keep going until array ==0

#an array
group = []

while true
    puts "There are #{group.length} memebrs in the group"
    puts "Press 1) to add a member to the group." 
    puts "Press 2) to display a random group." 
    puts "Press 3) to quit"
    menu_input = gets.chomp.to_i

    case menu_input
    when 1
        puts "Enter name to add:"
        name = gets.chomp
        group.push(name)
        # group << name
    when 2 
        random_group_running = true
        while random_group_running
            copied_group = group.clone
            while copied_group.length > 0
                random_index = rand((copied_group.length - 1))
                puts copied_group[random_index]
                copied_group.delete_at(random_index)
            end
            puts "Press 1 to regenerate order"
            puts "Press 2 to quit"
            puts "Press any other key to regenrate order"
            random_group_menu_choice == gets.chomp.to_i
            if random_group_menu_choice == 2
                random_group_running = false
            elsif random_group_menu_choice == 2
                exit
            end

        end
        
    when 3
        puts "Are you sure, type 'yes' to quite"
        quit_choice = gets.chomp
        break if quit_choice.downcase == 'yes'
    else
        puts "Invalid input"
    end
    puts "Press any Key to continue"
    gets
    system "clear"
end

puts "Goodbye"