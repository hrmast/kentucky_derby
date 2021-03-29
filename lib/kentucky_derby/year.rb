require "pry"

class KentuckyDerby::Year
    attr_accessor :year, :team
    @@all = []

    def initialize(year)
        @year = year
        @team = []
    end

    def self.all
        KentuckyDerby::Scraper.scrape_year if @@all.empty?
        @@all
    end
end