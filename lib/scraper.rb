require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    binding.pry
    students = doc.css(".roster-cards-container")
  end

  def self.scrape_profile_page(profile_url)

  end

end
