require "pry"

class KentuckyDerby::CLI
    def call
        puts "Welcome to the Kentucky Derby Winners CLI!"
        KentuckyDerby::Scraper.scrape_year
        KentuckyDerby::Scraper.scrape_team(year = 2020)
        
        
       
        user_selection
    end


    # Program opens with welcome message

    def user_input
        input = nil
        puts "Please enter a year to see the race winners information."
        while input != exit
            # if the year is included in the file
            #     puts "The Winners of the #{year} Kentucky Derby are:"
            #     puts '"#{horse} - #{jockey" - #{trainer}"'
            #     puts "With a time of #{time}."
            #     puts "The owners of the team are #{owners}."

            
            #user inputs a year
            #then the data is puts to the screen
            #The Winner of the #{year} Kentucky Derby is: #{horse} #{jockey} ect...
            #then give the user the option to select another year or exit
        
            
            
        end
    end

    def triple_crown

    end

    # User inputs a four digit year 
    #  - output is all the winner information for that year
    #  - Winner can select horse, jockey, etc by number to get more information about them.
end