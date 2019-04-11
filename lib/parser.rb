require 'rubygems'
require 'nokogiri'   
require 'open-uri'


PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"

page = Nokogiri::HTML(open(PAGE_URL)) # ==> initiation du scrapping avec la méthode utilisé et le lien.

links = page.css("li a[href]")
puts links #affichage des lien avec des balises associés"

news_links = page.css("a").select{ |link| link['href']}
news_links.each{|lien| puts lien['href']}
#affichage de tous les urls sans distinctions

news_links = page.css("a").select{ |link| link['data-category'] == "news"}
news_links.each{|lien| puts lien['href']}
#affichage de tous les urls en distinguant la catégorie "Data" // "Collection"

news_links = page.css("a[data-category=news]")
news_links.each{|lien| puts lien['href']}
affichage de tous les urls en distinguant la catégorie "Data" // "Attributes "

news_links2 = page.css('p').css("a")
news_links2.each{|link| puts link['href']}

news_links2 = page.css('li a')
news_links2.each{|link| puts link['href']}

news_links = page.css("div#references a")
news_links.each{|link| puts "#{link.text}\t\t#{link['href']}"}   
## \t = espace .

## --> Première ligne est le chemin que l'on donne <-- ##
## --> Deuxième ligne est l'information dans cette ligne a afficher /récuperer <-- ###