require "pry"

class KentuckyDerby::CLI
    def call 
        KentuckyDerby::Scraper.scrape_year
        KentuckyDerby::Scraper.scrape_team(year)
        binding.pry
        welcome
    end
    
    def welcome
        puts "Welcome to the Kentucky Derby Winners CLI!"
        puts "Please enter a four digit year to see the race winners information."
        input = gets.strip.to-i
    end

    def not_sure

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