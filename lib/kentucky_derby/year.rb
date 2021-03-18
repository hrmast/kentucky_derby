require "pry"

class KentuckyDerby::Year
    @@all = []
    def initialize(year)
        @year = year
        @teams = []
        @@all << self
    end

    def self.all
        KentuckyDerby::Year.scrape_year if @@all.empty?
        @@all
    end

    def get_team
        KentuckyDerby::Scraper.scrape_team(self) if @@teams.empty?
    end

end