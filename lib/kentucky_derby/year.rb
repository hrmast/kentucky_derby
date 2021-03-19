require "pry"

class KentuckyDerby::Year

        attr_accessor :year
    @@all = []
    def initialize(year)
        @year = year
        @@all << self
    end

    def self.all
        KentuckyDerby::Year.scrape_year if @@all.empty?
        @@all
    end

    def get_team
       
        KentuckyDerby::Scraper.scrape_team(self) if @teams.empty?
    end

    def self.teams
        @teams
    end
end