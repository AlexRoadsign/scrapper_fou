#! /usr/bin/env ruby gems//
require 'rubygems'
require 'nokogiri'
require 'open-uri'

puts "Bienvenue sur le finder de Crypto"
puts "Tape un chiffre entre 1 & 2300"
chiffre = gets.to_i

#Arrays I declare
crypto_names = []
crypto_prices = []
hash_crypto = {}
final_array_crypto = []


#launching Nokogiri & declaring a page function
page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

# Fetch and parse HTML document// crypto-names
page.xpath('(//tr[position()>=1 and position()<=last()]/td[2]/a)').each do |node|
	crypto_names.push(node.text)
end

# Fetch and parse HTML document// crypto-prices
page.xpath('(//tr[position()>=1 and position()<=last()]/td[5]/a)').each do |node|
	crypto_prices.push(node.text)
end

#creation d'un Hash dans lequel j'insert les données crypto_prices & crypto_names
hash_crypto = Hash[crypto_names.zip crypto_prices]

#Final array crypto
final_array_crypto = hash_crypto.to_a

puts "La crypto avec l'ID #{chiffre} est :#{final_array_crypto[chiffre]}"











