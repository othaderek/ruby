
require 'Nokogiri'

page = Nokogiri::HTML(open("https://www.marxists.org/archive/index.htm"))

links = page.css("a")
puts links.length
puts links[0].text
puts links[0]["href"]