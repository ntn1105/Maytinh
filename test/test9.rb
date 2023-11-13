require 'watir'

browser = Watir::Browser.new
browser.goto "https://ntn1105.github.io/Maytinh/"

# 3*-3
browser.button(id: "button3").click
browser.button(id: "multiplyButton").click
browser.button(id: "subtractButton").click
browser.button(id: "button3").click
browser.button(id: "equalButton").click

if browser.input(id: "display").value == "-9"
  puts "passed"
else
  puts "failed"
end
