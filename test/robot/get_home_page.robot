*** Settings ***
Library  SeleniumLibrary
Suite Teardown  Close All Browsers

*** Test cases ***
Get Home Page
    Open Browser  http://192.168.99.100:31000/  gc
    Page Should Contain  Tour of Heroes
