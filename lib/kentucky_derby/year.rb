require "pry"

class KentuckyDerby::Year
    
    @@all = []

    attr_accessor :year, :team

    def initialize(year)
        @year = year
        @team = []
        add_team
        @@all << self
    end

    def self.all
        @@all
    end

    def add_team
        KentuckyDerby::Scraper.scrape_team if @team.empty?
    end
end