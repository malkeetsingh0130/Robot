*** Settings ***
Library  SeleniumLibrary
Library    OperatingSystem
Resource   variables.robot

*** Keywords ***
 Open Flipkart
  Open Browser  about:blank    ${browser}
  Maximize Browser Window
  Go To    ${flipkart_url}
  Set Selenium Implicit Wait    5s
  Press Keys  ${Login_rejection}    ENTER


  

  #Close Browser

 Go to ‘Electronics’ tab
   Mouse Over    xpath=//*[contains(@alt,"Electronics")]
 Search for any of your desired Mobile from ‘Mobiles’ section
   ${counting} =  Get Element Count  xpath=//*[@class="_3XS_gI _7qr1OC"]/a
   Log to Console  ${counting}
   Set Selenium Implicit Wait    10s
   FOR  ${i}  IN RANGE  1  ${counting}
    ${list_names}  Get Text  xpath=//*[@class="_3XS_gI _7qr1OC"]/a[${i}]
    Scroll Element Into View  xpath=//*[@class="_3XS_gI _7qr1OC"]/a[14]
    Log to Console  ${list_names}
    Exit For Loop If  "${list_names}" == "${tablet1}"
  END
 I.e, Try scrolling and search for the mobile and go to that specific mobile’s details page
  Sleep    4s
  Mouse Over  xpath=//*[@class="_3XS_gI _7qr1OC"]/a[14]

  ${Click Element}  Get Text  ${all-sub-options}
  Log to Console  ${Click Element}
  Click Element  ${all-sub-options}
  Click Element  ${search_bar_dummy}
  sleep  4s

  SeleniumLibrary.Execute JavaScript  window.scrollBy(0,1850)
  sleep  4s



  Click Element  ${lap}
#BROWSER SLEEP  IN GIVEN TIME
  sleep  4s

  ${handles}=  Get Window Handles
  Switch Window   ${handles}[0]
  #title of the page product
  ${title}  Get Title
  Log to console  ${title}
  #clicking on the product

  sleep  4s
  Click Element  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[6]/div/div/div/a/div[2]/div[1]
  sleep  4s

  Execute Javascript   window.scrollBy(0,200)
#WINDOWS TAB HANDLER USER TO SHIFT THE TABS

  Switch Window  ${handles}[0]
#USED TO SCROLL THE PAGE
  Execute Javascript   window.scrollBy(0,200)


  Switch Window   ${handles}[1]
Click on ADD TO CART button
#ADDING TO CART IN THE LAST TAB
  Click Element   ${addtocart}
  ${handles}=  Get Window Handles
  Switch Window   ${handles}[-1]
#ADDING TO CART IN SECOND TAB
  Click Element   ${addtocart}

 Closing the browser
  Close Browser



































# Click on ADD TO CART button