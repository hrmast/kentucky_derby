require "pry"

class KentuckyDerby::CLI
    def call 
        welcome
        race_info
    end
    
    def welcome
        puts "Welcome to the Kentucky Derby Winners CLI!"
        puts "Please enter a four digit year to see the race winners information."
    end

    def race_info
        input = gets.strip
        until input == "exit"
            i = 0
            binding.pry
            while input <= KentuckyDerby::Team.all.length
                puts "The Winners of the #{KentuckyDerby::Team.all[i].year} Kentucky Derby are: "
                puts "#{KentuckyDerby::Team.all[i].horse} - #{KentuckyDerby::Team.all[i].jockey} - #{KentuckyDerby::Team.all[i].trainer}"
                puts "With a time of #{KentuckyDerby::Team.all[i].time}."
                puts "The owners of the team are #{KentuckyDerby::Team.all[i].owners}."
            end
            i+=1
        end
    end

    def user_second_choice
        puts "Please enter a new four digit year or exit."
        input = gets.strip
        #does this need an if statement to circle back to race_info method?
    end
 
        # puts "The Winners of the  Kentucky Derby are:"
        # puts " -  - "
        # puts "With a time of ."
        # puts "The owners of the team are ."
        # puts "Please enter a new four digit year or exit."
        # input = gets.strip
        # puts "Thank you for visiting the Kentucky Derby Winners portal!"
end
 #{year} #{horse} - #{jockey} - #{trainer} #{owners}