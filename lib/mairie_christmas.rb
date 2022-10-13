require 'open-uri'
require 'nokogiri'

page = Nokogiri::HTML(URI.open("http://www.annuaire-des-mairies.com"))

page.xpath("//*div[1]/main/section[2]/div/table/tbody/tr[*]/td[2]/a").each do |i|
    puts i.content
    end


