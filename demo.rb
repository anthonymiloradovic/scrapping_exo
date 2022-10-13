require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://example.com"))

page.xpath ("//*/div[1]/ tr* a la fin .each do  |i|
    puts i.content 
end

l'etoile va chercher tout le contenu jusqu'a la div sinon copier le xpath 