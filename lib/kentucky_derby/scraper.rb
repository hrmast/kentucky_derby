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

    def self.scrape_horses
        doc = Nokogiri::HTML(open("https://www.kentuckyderby.com/history/kentucky-derby-winners"))    
        
        table = doc.at('tbody')
        table.search('tr').collect do |tr|
            horse = tr.search('th, td')[1].text.strip.gsub("\n", "")
        KentuckyDerby::Year.new(horse)
        end
        
    end
    
    def self.scrape_jockeys
        doc = Nokogiri::HTML(open("https://www.kentuckyderby.com/history/kentucky-derby-winners"))    
        
        table = doc.at('tbody')
        table.search('tr').collect do |tr|
            jockey = tr.search('th, td')[2].text.strip
        KentuckyDerby::Year.new(jockey)
        end
        
    end
    
    def self.scrape_trainers
        doc = Nokogiri::HTML(open("https://www.kentuckyderby.com/history/kentucky-derby-winners"))    
        
        table = doc.at('tbody')
        table.search('tr').collect do |tr|
            trainer = tr.search('th, td')[3].text
        KentuckyDerby::Year.new(trainer)
        end
        
    end

    def self.scrape_owners
        doc = Nokogiri::HTML(open("https://www.kentuckyderby.com/history/kentucky-derby-winners"))    
        
        table = doc.at('tbody')
        table.search('tr').collect do |tr|
            owner = tr.search('th, td')[4].text
        KentuckyDerby::Year.new(owner)
        end
        
    end

    def self.scrape_time
        doc = Nokogiri::HTML(open("https://www.kentuckyderby.com/history/kentucky-derby-winners"))    
        
        table = doc.at('tbody')
        table.search('tr').collect do |tr|
            time = tr.search('th, td')[5].text
        KentuckyDerby::Year.new(time)
        end
        
    end

    def self.scrape_team(year = 2020)
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

