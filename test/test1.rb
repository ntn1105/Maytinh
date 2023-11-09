require 'watir'

browser= Watir::Browser.new
browser.goto "https://ntn1105.github.io/calculator/"


#3 % =0.03
browser.div(:id => "hmt_51").click
browser.div(:id => "hmt_37").click
browser.div(:id => "hmt_13").click
if browser.div(:id => "hm_ekran").text == "0.03"
puts "passed"
else puts "failed"
end

