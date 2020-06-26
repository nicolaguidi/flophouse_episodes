require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  flophouse_url = 'https://www.flophousepodcast.com/episodes/'
  html = open(flophouse_url)
  doc = Nokogiri::HTML(html)
  
  binding pry
end

scrape = Scrape.new