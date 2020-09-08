require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url="https://learn-co-curriculum.github.io/student-scraper-test-page/")

    #les siden med nokogiri
    html = open(index_url)
    @doc = Nokogiri::HTML(html)
    #hent alle studentene
    @doc.css(".student-card")
    #student navn, lokasjon og url
    #opprett array med hash
    # :name, :location, :profile_url
    #populer array med hash med verdier hentet fra siden
    #returner array med hash for hver student i listen


  end

  def self.scrape_profile_page(profile_url)

    #hent
  end

end
