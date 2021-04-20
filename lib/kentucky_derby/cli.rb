require "pry"

class KentuckyDerby::CLI
    def call
        welcome
        race_info
        good_bye
    end
    
    def welcome
        puts "Welcome to the Kentucky Derby Winners CLI!"
        puts "Please enter a four digit year to see the race winners information."
    end

    def race_info
        input = gets.strip.to_i
        until input == "exit"
            KentuckyDerby::Team.all.each_index do |index|
                if valid_input(input) == false
                    puts "Invalid Entry! Please enter a four digit year or type exit ." 
        
                elsif KentuckyDerby::Team.all[index].year == input
                    puts "The Winners of the #{KentuckyDerby::Team.all[index].year} Kentucky Derby are: "
                    puts "Horse: #{KentuckyDerby::Team.all[index].horse}"
                    puts "Jockey: #{KentuckyDerby::Team.all[index].jockey}"
                    puts "Trainer: #{KentuckyDerby::Team.all[index].trainer}"        
                    puts "Race time: #{KentuckyDerby::Team.all[index].time}."
                    puts "Owners: #{KentuckyDerby::Team.all[index].owner}."
                end
            end
            puts "Please enter a new four digit year or exit."
            input = gets.strip.to_i
        end
    end

    def good_bye
        puts "Thank you for visiting the Kentucky Derby Winners CLI, please come again."
    end

    def self.valid_input(input)
        #This needs to state that the input must be a number between 1876 to present day.
        input.to_i && input > 1876 && input <= 2020

    end
    binding.pry
end