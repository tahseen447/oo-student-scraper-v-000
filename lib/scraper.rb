require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-card")
    students.each do |student|
      name =student.css('a').css("h4.student-name").text
      url = student.css('a')[0]['href']
      location =student.css('a').css("p.student-location")
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
