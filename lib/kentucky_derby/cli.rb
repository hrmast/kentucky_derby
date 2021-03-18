require "pry"

class KentuckyDerby::CLI
    def call
        puts "Welcome to the Kentucky Derby Winners Information Portal!"
        
        KentuckyDerby::Scraper.scrape_year
        KentuckyDerby::Scraper.scrape_team
        KentuckyDerby::Team.all
        KentuckyDerby::Year.all
        binding.pry
        user_selection
    end


    # Program opens with welcome message

    def user_selection
        input = nil
        puts "Please enter a year to see the race winners information."
        
        while input != exit
            if input 
        
            
            end
        end


    end


    # User inputs a four digit year 
    #  - output is all the winner information for that year
    #  - Winner can select horse, jockey, etc by number to get more information about them.
    
    

end