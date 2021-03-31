require "pry"

class KentuckyDerby::Year
    
    @@all = []

    attr_accessor :year, :team

    def initialize(year)
        @year = year
        @team = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_team
        KentuckyDerby::Scraper.scrape_team(self) if @team.empty?
    end
end