require "pry"

class KentuckyDerby::Team
    attr_accessor :year, :horse, :jockey, :trainer, :owner, :time

    @@all = []

    def initialize(year, horse, jockey, trainer, owner, time)
     
        @teams = []
        @@all << self
    end

    def self.all
        KentuckyDerby::Scraper.scrape_team if @@all.empty?
        @@all
    end

    
    #In order to find the number of horse wins.  I need to 

    def self.triple_crown
        if KentuckyDerby::Scraper.scrape_team.include?("Authentic")
            puts "oh year"
        end
    end
end