require 'rubygems'
require 'nokogiri'
require 'open-uri'


URL = "https://coinmarketcap.com/all/views/all/"


page = Nokogiri::HTML(open(URL)) 
     # page.xpath('//h1[@class="primary"]/a[@id="email"]')
     # page.xpath('//a[contains(@href, "mailto")]').

puts page.xpath('//tr[1]/td[5]/a').text