
#Booking desk

require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
url="https://apac-ar-test.herokuapp.com"
driver.navigate.to url

sleep 3

def login
driver.find_element(:id=>'user_email').send_keys("danya0971@163.com")
driver.find_element(:id=>'user_password').send_keys("123456")
dr.find_element(:name => 'commit').click
end 

def booking 	
driver.find_element(:id=>'booking_desk_id').find_element(:tag_name=>'option')[1].click
driver.find_element(:id=>'booking_booked_from').send_keys("2019/01/23，03：34 PM")
driver.find_element(:id=>'booking_booked_to').send_keys("2019/01/23，03：34 PM")
dr.find_element(:name => 'commit').click
end 

driven.login
driven.booking

driver.quit