#require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page
    index_url ="https://learn-co-curriculum.github.io/student-scraper-test-page/"
    #les siden med nokogiri
  #  site = open(index_url)
    site = Nokogiri::HTML(open(index_url))
    #hent alle studentene
    #lag loop på antall student card
    roster = site.css(".roster-cards-container")
    site.css(".student-card")
    #student navn, lokasjon og url
    #hent ut denne info og lagre i array
    #lag variabel/keys for lagring av info
  name = site.css(".student-name")
  location = site.css(".student-location")
  profile_url = site.css(".student-card a")

    #opprett array med hash
    # :name, :location, :profile_url
    #populer array med hash med verdier hentet fra siden
    #returner array med hash for hver student i listen
binding.pry

  end

  def self.scrape_profile_page(profile_url)

    #hent
  end

end
