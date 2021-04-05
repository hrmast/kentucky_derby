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
        input = gets.strip
        until input == "exit"
            KentuckyDerby::Team.all.each_index do |index|
                if KentuckyDerby::Team.all[index].year == input
                    puts "The Winners of the #{KentuckyDerby::Team.all[index].year} Kentucky Derby are: "
                    puts "Horse: #{KentuckyDerby::Team.all[index].horse}"
                    puts "Jockey: #{KentuckyDerby::Team.all[index].jockey}"
                    puts "Trainer: #{KentuckyDerby::Team.all[index].trainer}"        
                    puts "Race time: #{KentuckyDerby::Team.all[index].time}."
                    puts "Owners: #{KentuckyDerby::Team.all[index].owner}."
                end
            end
            puts "Please enter a new four digit year or exit."
            input = gets.strip 
        end
    end

    def good_bye
        puts "Thank you for visiting the Kentucky Derby Winners CLI, please come again."
    end

    def valid_input(input)

    end
end