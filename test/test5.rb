require 'watir'

browser = Watir::Browser.new
browser.goto "https://ntn1105.github.io/Maytinh/"

# 0/0
browser.button(id: "button0").click
browser.button(id: "divideButton").click
browser.button(id: "button0").click
browser.button(id: "equalButton").click

if browser.input(id: "display").value == "NaN"
  puts "passed"
else
  puts "failed"
end
