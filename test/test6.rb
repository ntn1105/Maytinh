require 'watir'

browser = Watir::Browser.new
    browser.goto "https://ntn1105.github.io/Maytinh/"

# 3++3
browser.button(id: "button3").click
browser.button(id: "addButton").click
browser.button(id: "addButton").click
browser.button(id: "button3").click

if browser.input(id: "display").value == "6"
  puts "passed"
else
  puts "failed"
end
