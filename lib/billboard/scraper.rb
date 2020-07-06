require 'nokogiri'
require 'open-uri'


class Billboard::Scraper

def initialize(input)
    @site = "https://www.billboard.com/charts/hot-100"
    scrape_songs(input)
end

def scrape_songs(input)
  doc = Nokogiri::HTML(open(@site))
top = doc.css(".chart-list__element").first(input)
top.each_with_index do |info, i|
  title = info.css(".chart-element__information__song").text
  artist = info.css(".chart-element__information__artist").text.gsub(" Featuring", ", Featuring -").split(", ")
  string = info.css(".chart-element__information__artist").text.gsub(" Featuring", ", Featuring -")
  delta = info.css(".chart-element__information__delta__text.text--default").text.to_i
  trend = info.css(".chart-element__trend").text.gsub("Failing", "Falling")
  last = info.css(".chart-element__information__delta__text.text--last").text.gsub(" Last Week", "").to_i
  peak = info.css(".chart-element__information__delta__text.text--peak").text.gsub(" Peak Rank", "").to_i
  duration = info.css(".chart-element__information__delta__text.text--week").text.gsub("Weeks on Chart", "").to_i
  rank = info.css(".chart-element__rank__number").text.to_i
  Billboard::Songs.new(title, artist, delta, last, peak, duration, rank, trend, string)
  puts "#{rank}. '#{title}', by #{string}"
end
end

end