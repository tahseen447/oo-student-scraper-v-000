require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-card")
    students.each do |student|
      student_link_element = student.css('a')
      name =student_link_element.css("h4.student-name").text
      url = student_link_element[0]['href']
      location =student_link_element.css("p.student-location")
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
