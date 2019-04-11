require 'rubygems'
require 'nokogiri'
require 'open-uri'



PAGE_URL = "https://coinmarketcap.com/all/views/all/"   
page = Nokogiri::HTML(open(PAGE_URL))   
crypto_name_array = {}
arrmoney = arrprice = Array.new

1.upto(2165){ |i|

chemin_name = "//tr[#{i}]/td[2]/a"
chemin_price = "//tr[#{i}]/td[5]/a"

name_money = page.xpath(chemin_name).text#.select{|blaze| arrmoney.push(blaze)}# => title //a[@class="currency-name-container link-secondary"]
price_money = page.xpath(chemin_price).text

crypto_name_array[name_money] = price_money

puts name_money
puts price_money
}

puts crypto_name_array