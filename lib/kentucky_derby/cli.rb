require "pry"

class KentuckyDerby::CLI
    def call
        puts "Welcome to the Kentucky Derby Winners CLI!"
        KentuckyDerby::Scraper.scrape_team
        
        user_input
    end

    def user_input
        input = nil
        puts "Please enter a four digit year to see the race winners information."
        input = gets.strip
            if input != "exit"
                puts "The Winners of the  Kentucky Derby are:"
                puts " -  - "
                puts "With a time of ."
                puts "The owners of the team are ."
                puts "Please enter a new four digit year or exit."
        
            else 
                puts "Thank you for visiting the Kentucky Derby Winners portal!"
        end
    end
end
 #{year} #{horse} - #{jockey} - #{trainer} #{owners}