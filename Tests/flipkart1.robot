*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Keywords.robot


*** Test Cases ***
Flipkart-asssignment
   Open Flipkart
   Go to ‘Electronics’ tab
   Search for any of your desired Mobile from ‘Mobiles’ section
   I.e, Try scrolling and search for the mobile and go to that specific mobile’s details page
   Click on ADD TO CART button
   Closing the browser
