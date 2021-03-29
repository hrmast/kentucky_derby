require "pry"

class KentuckyDerby::Team
    attr_accessor :year, :horse, :jockey, :trainer, :owner, :time, :team

    @@all = []

    def initialize(year, horse, jockey, trainer, owner, time)
        @year = year
        @horse = horse
        @jockey = jockey
        @trainer = trainer 
        @owner = owner
        @time = time
        add_to_year
        @@all << self
    end

    def self.all
        KentuckyDerby::Scraper.scrape_team if @@all.empty?
        @@all
    end

    def add_to_year
        @year.team << self unless @year.team.include?(self)
    end
    
end