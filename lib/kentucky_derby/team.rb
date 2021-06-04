require "pry"

class KentuckyDerby::Team
    attr_accessor :year, :horse, :jockey, :trainer, :owner, :time

    @@all = []

    def initialize(year, horse, jockey, trainer, owner, time)
        @year = year
        @horse = horse
        @jockey = jockey
        @trainer = trainer 
        @owner = owner
        @time = time
        @@all << self
    end

    def self.all
        KentuckyDerby::Scraper.scrape_team if @@all.empty?
        @@all
    end

    
end