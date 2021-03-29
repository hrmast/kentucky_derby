require "pry"
require "open-uri"
require "nokogiri"

class KentuckyDerby::Scraper
    
    def self.scrape_year
        doc = Nokogiri::HTML(open("https://www.kentuckyderby.com/history/kentucky-derby-winners"))    
        
        table = doc.at('tbody')
        table.search('tr').collect do |tr|
            year = tr.search('th, td')[0].text
            KentuckyDerby::Year.new(year)
        end
    end

    def self.scrape_team(year)
        doc = Nokogiri::HTML(open("https://www.kentuckyderby.com/history/kentucky-derby-winners"))    
        
        table = doc.at('tbody')
        table.search('tr').collect do |tr|
            horse = tr.search('th, td')[1].text.strip.gsub("\n", "")
            jockey = tr.search('th, td')[2].text.strip
            trainer = tr.search('th, td')[3].text
            owner = tr.search('th, td')[4].text
            time = tr.search('th, td')[5].text
            KentuckyDerby::Team.new(year, horse, jockey, trainer, owner, time)
        end 
    end  
end     

