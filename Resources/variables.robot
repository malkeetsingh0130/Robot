*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#open a url
${flipkart_url} =  https://www.flipkart.com/

#mentioning which browser currently we are working
${browser} =  gc

#demo project login notification we  have to cancel it
${Login_rejection}=  //*[@class="_2KpZ6l _2doB4z"]

#selecting a particular element in the list we need a container list of the product
${electronic_first_section} =  xpath=//*[@class="_3XS_gI _7qr1OC"]/a

${MOBILE_ACCESSORIES} =  //*[@class="_6WOcW9 _2-k99T"]

${expected_category} =  //*[@class="_6WOcW9 _2-k99T"]

#test
#webelement

${electronics} =  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]
#Test data

${tablet1} =  Tablets
${all-sub-options} =  xpath=//*[@class="_3XS_gI"]/a[3]
${search_bar_dummy} =  xpath=//*[@class="L0Z3Pu"]
${lap} =  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[6]/div/div/div/a/div[2]/div[1]

${nokia_tab} =         xpath=//*[@title="Nokia Tab T20 4GB RAM 64GB ROM 10.36 inch with Wi-Fi+4G Tablet (Blue)"]
${addtocart} =  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]
${window} =  Tablets Without Call Facility - Buy Tablets Without Call Facility Online at Best Prices In India | Flipkart.com

#APPLE iPad (9th Gen) 64 GB ROM 10.2 inch with Wi-Fi Only (Space Grey) Price in India - Buy APPLE iPad (9th Gen) 64 GB ROM 10.2 inch with Wi-Fi Only (Space Grey) Space Grey 64 Online - APPLE : Flipkart.com

${apple_mini} =  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[7]/div/div/div/a/div[2]/div[1]/div[1]

${beku}=  xpath = //*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/h1/span

${cart_mobile} =   xpath = //*[@id="container"]/div/div[3]/div[1]/div[2]/div[6]/div/div/div/a/div[2]/div[1]/div[1]