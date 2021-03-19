require "pry"

class KentuckyDerby::Team
    attr_accessor :year, :horse, :jockey, :trainer, :owner, :time, :teams

    @@all = []

    def initialize(horse, jockey, trainer, owner, time)
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

    # def add_to_year
    #     @year.teams << self unless @year.teams.include?(self)
    # end

    def multiple_wins_horse
        
    end
    binding.pry
    #In order to find the number of horse wins.  I need to 
end