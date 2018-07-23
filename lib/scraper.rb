require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-card")
    binding.pry
    students.each do |student|
      name =
      url= student.css('a')[0]['href']
      location =
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
