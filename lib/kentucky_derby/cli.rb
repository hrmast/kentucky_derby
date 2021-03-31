require "pry"

class KentuckyDerby::CLI
    def call 
        KentuckyDerby::Scraper.scrape_year
        binding.pry
        welcome
        race_info
        
    end
    
    def welcome
        puts "Welcome to the Kentucky Derby Winners CLI!"
        puts "Please enter a four digit year to see the race winners information."
        input = gets.strip
    end

    def race_info
        # How can I identify the year and individual, I need to loop with an index identifying the number of i. 
        until input == "exit"
                if input == KentuckyDerby::Team.all[i].year
                    puts "The Winners of the #{KentuckyDerby::Team.all[i].year} Kentucky Derby are: "
                    puts "#{KentuckyDerby::Team.all[i].horse} - #{KentuckyDerby::Team.all[i].jockey} - #{KentuckyDerby::Team.all[i].trainer}"
                    puts "With a time of #{KentuckyDerby::Team.all[i].time}."
                    puts "The owners of the team are #{KentuckyDerby::Team.all[i].owner}."
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