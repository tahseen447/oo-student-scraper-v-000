require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-card")
    student_hash = {}
    students.each do |student|
      new_student = {}
      student_link_element = student.css('a')
      new_student[:name] =student_link_element.css("h4.student-name").text
      new_student[:profile_url] = student_link_element[0]['href']
      new_student[:location] =student_link_element.css("p.student-location")
          binding.pry
      student_hash << new_student
    end
    student_hash
  end

  def self.scrape_profile_page(profile_url)

  end

end
