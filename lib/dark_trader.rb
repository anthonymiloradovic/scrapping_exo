require 'open-uri'
require 'nokogiri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))


def name(link)
    bourse = []

link.xpath("//*/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[2]/div/a[2]").each do |i|
bourse.push(i.text)
end
return bourse
end

def value(link)
    price = []

link.xpath("//*/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[5]").each do |i|
    price.push(i.text)
end
return price
end

def final_combo_name_and_price(link)
    final_crypto = name(link)
    final_value = value(link)

    final = final_crypto.zip(final_value).to_h
    final
end

puts final_combo_name_and_price(page)

 



=begin


page.xpath ("//*/div[1]/ tr* a la fin .each do  |i|


end

l'etoile va chercher tout le contenu jusqu'a la div sinon copier le xpath 

pr le prix exactement pareil mais avec le td

selection le prix avec inspecteur d element
copy expath le prix  
enlever le id au debut //*/


=end
