require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

list = doc.css('.components-item')

list.each do |list|
  print list.inner_html
end
